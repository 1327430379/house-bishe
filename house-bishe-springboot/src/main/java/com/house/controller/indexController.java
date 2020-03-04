package com.house.controller;

import com.house.bean.entity.House_view;
import com.house.bean.eo.House;
import com.house.bean.eo.Images;
import com.house.bean.eo.Supporting;
import com.house.service.*;
import com.house.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


@Controller
public class indexController {//首页对应的controller

    @Autowired
    private House_viewService hvservice;

    @Autowired
    private HouseService hservice;

    @Autowired
    private SupportService sservice;
    @Autowired
    private StaffService stservice;
    @Autowired
    private ImagesService iservice;

    @Autowired
    private LocationService lservice;

    @Autowired
    private CustomerService cservice;

    @RequestMapping(value = "/")
    public String home() {


        return "forward:indexlist.do";
    }


    @RequestMapping("indexlist.do")
    public String houseList(HttpServletRequest request) {

        //	List<House_view> list = hvservice.findAllHouse_view();findAllview_gui()
        List<House_view> list = hvservice.findAllview_gui();
        request.setAttribute("list", list);
        //request.setAttribute("path", "E:\\Tomcat ruanjian\\images_house\\");

        List<House> tlist = hvservice.findAllview_size("福州");
        System.out.println(tlist.size());
        int rows = 12;
        int total = tlist.size();
        if (total % rows == 0) total = tlist.size() / rows;
        else total = tlist.size() / rows + 1;

        request.setAttribute("list", list);
        request.setAttribute("total", total);
        System.out.println(total);
        request.setAttribute("num", 1);
        return "index";//forward:
    }


    @RequestMapping("indexfenye.do/{city}/{num}")
    public String indexfenye(@PathVariable("city") int city, @PathVariable("num") String num, HttpServletRequest request) {
        String city_name = "福州";
        String result = "index";
        if (city == 1) {
            city_name = "福州";
        } else if (city == 2) {
            city_name = "厦门";
            result = "xiamen";
        } else if (city == 3) {
            city_name = "泉州";
            result = "quanzhou";
        } else if (city == 4) {
            city_name = "漳州";
            result = "zhangzhou";
        } else if (city == 5) {
            city_name = "莆田";
            result = "putian";
        }

        int rows = 12;//每页五个

        //0,5>6,10

        //	String num=request.getParameter("num");//num为页书，第二页就是start= (num-1)*rows,到end=start+rows
        int start = (Integer.parseInt(num) - 1) * rows;
        List<House_view> list = hvservice.findhouse_limit(city_name, "空闲", start, rows);//没有的原因因为spporting
        //List<House> list = hservice.findhouse_fen(start,rows);
        List<House> tlist = hvservice.findAllview_size(city_name);
        int total = tlist.size();
        if (total % rows == 0) total = tlist.size() / rows;
        else total = tlist.size() / rows + 1;

        System.out.println(num);
        request.setAttribute("list", list);
        request.setAttribute("total", total);
        request.setAttribute("num", num);

        return result;//forward:
    }


    /*
     1.可以不用分页，limit掉就行
     2.只能福州
     */
    @RequestMapping(value = "/search.do", method = RequestMethod.POST)
    public String search(HttpServletRequest request) {


        String key = request.getParameter("key");
        String city = request.getParameter("city");
        System.out.println(city + key);
        if ("福州市".equals(city)) {
            List<House_view> list = hvservice.findview_key("福州", key);

            System.out.println(key);
            request.setAttribute("list", list);
            System.out.println(list.size());

            int total = list.size() / 10;
            request.setAttribute("total", total);

            request.setAttribute("num", 1);
            return "index";
        } else if ("南宁市".equals(city)) {
            List<House_view> list = hvservice.findview_key("南宁", key);
            request.setAttribute("list", list);
            return "nanindex";
        } else return "forward:indexlist.do";


    }

    //一室一厅         七星区     押一付一   1室一厅          押一付1      叠彩区
    @RequestMapping(value = "/search2.do", method = RequestMethod.POST)
    public String search2(HttpServletRequest request) {


        String key = request.getParameter("key");

        key = key.replace('1', '一').replace('2', '二').replace('3', '三');
        String city = request.getParameter("city");
        System.out.println(city + key);
        List<House_view> list = null;//new ArrayList<House_view> ()

        String[] arr = key.split("\\s+");//能够按照空格拆分，无论中间有多少个空格都可以拆分
        List<String> strlist = new ArrayList<String>();
        for (int i = 0; i < arr.length; i++) {
            if (StringUtil.isNotEmpty(arr[i])) strlist.add(arr[i]);
        }
        String address = null;
        String paytype = null;
        String type = null;
        if (strlist.size() == 1) {
            if ('押' == strlist.get(0).charAt(0) || '押' == strlist.get(0).charAt(1)) {
                list = hvservice.findpaytype(city, strlist.get(0));
            } else {
                list = hvservice.findview_key(city, strlist.get(0));
            }

        } else if (strlist.size() == 2) {

            for (String s : strlist) {

                if ('一' == s.charAt(0) || '二' == s.charAt(0) || '三' == s.charAt(0)) {
                    type = s;

                } else if ('押' == s.charAt(0) || '押' == s.charAt(1)) {
                    paytype = s;

                } else {
                    address = s;
                }
            }

            if (StringUtil.isEmpty(paytype)) {
                list = hvservice.findmutiple1(city, address, type);
            } else if (StringUtil.isEmpty(address)) {
                list = hvservice.findmutiple3(city, type, paytype);
            } else {
                list = hvservice.findmutiple2(city, address, paytype);
            }

        } else if (strlist.size() == 3) {//这里是最好的

            for (String s : strlist) {

                if ('一' == s.charAt(0) || '二' == s.charAt(0) || '三' == s.charAt(0)) {
                    type = s;

                } else if ('押' == s.charAt(0) || '押' == s.charAt(1)) {
                    paytype = s;

                } else {
                    address = s;

                }
            }

            list = hvservice.findmutiple_all(city, address, type, paytype);
        } else {
            list = new ArrayList<House_view>();
        }
        request.setAttribute("list", list);
        System.out.println(list.size());
        request.setAttribute("key", key);
        int total = list.size() / 10;
        request.setAttribute("total", total);
        request.setAttribute("num", 1);
        if ("福州".equals(city)) return "index";
        else if ("厦门".equals(city)) return "xiamen";
        else if ("泉州".equals(city)) return "quanzhou";
        else if ("漳州".equals(city)) return "zhangzhou";

        else return "index";
    }


    @RequestMapping("xiamenList.do")
    public String nanningList(HttpServletRequest request) {
        List<House_view> list = hvservice.findhouse_limit12("厦门市", "空闲");
        request.setAttribute("list", list);//只显示前面12条记录

        //查询城市所有空闲的房子
        List<House> tlist = hvservice.findAllview_size("厦门市");
        System.out.println(tlist.size());
        int rows = 12;
        int total = tlist.size();
        if (total % rows == 0) total = tlist.size() / rows;
        else total = tlist.size() / rows + 1;

        request.setAttribute("list", list);
        request.setAttribute("total", total);
        System.out.println(total);
        request.setAttribute("num", 1);

        return "forward:xiamenindex";
    }

    @RequestMapping("quanzhouList.do")
    public String liuList(HttpServletRequest request) {

        List<House_view> list = hvservice.findhouse_limit12("泉州市", "空闲");
        request.setAttribute("list", list);//只显示前面12条记录

        //查询城市所有空闲的房子
        List<House> tlist = hvservice.findAllview_size("泉州市");
        System.out.println(tlist.size());
        int rows = 12;
        int total = tlist.size();
        if (total % rows == 0) total = tlist.size() / rows;
        else total = tlist.size() / rows + 1;

        request.setAttribute("list", list);
        request.setAttribute("total", total);
        System.out.println(total);
        request.setAttribute("num", 1);
        return "forward:quanzhou";
    }

    @RequestMapping("zhangzhouList.do")
    public String beiList(HttpServletRequest request) {

        List<House_view> list = hvservice.findhouse_limit12("漳州市", "空闲");
        request.setAttribute("list", list);//只显示前面12条记录

        //查询城市所有空闲的房子
        List<House> tlist = hvservice.findAllview_size("漳州市");
        System.out.println(tlist.size());
        int rows = 12;
        int total = tlist.size();
        if (total % rows == 0) total = tlist.size() / rows;
        else total = tlist.size() / rows + 1;

        request.setAttribute("list", list);
        request.setAttribute("total", total);
        System.out.println(total);
        request.setAttribute("num", 1);
        return "forward:zhangzhou";
    }

    @RequestMapping("putianList.do")
    public String laibinList(HttpServletRequest request) {
        List<House_view> list = hvservice.findAllview_city("莆田市");
        request.setAttribute("list", list);
        return "putian";//forward:
    }


    @RequestMapping(value = "/index_getOneHouse/{house_id}", method = RequestMethod.GET)
    public String getOneHouse(@PathVariable("house_id") String house_id, HttpServletRequest request) {
        //@PathVariable("house_id") String house_id,
        //String house_id=request.getParameter("house_id");
        //System.out.println("house_id:"+house_id);
		/*House h=hservice.findOneHouse(house_id);
		Supporting s=sservice.findOneSupporting(house_id);
		Location l=lservice.findOneLocation(house_id);*/
        //如果老师觉得HouseDetail.jsp的标题栏，写得不对，那么就是判断地址，然后将标题放到request当中，这样就不会不对了。

        House_view h = hvservice.findOneHouse_view(house_id);
        //System.out.println(h.toString());
        List<Images> imageslist = iservice.findAllImages(house_id);

        //Provider p=pservice.findOneProvider(h.getProvider_id());
        //System.out.println(h.get);
        request.setAttribute("h", h);
        //request.setAttribute("s", s);
        request.setAttribute("imageslist", imageslist);
        //request.setAttribute("l", l);
        //request.setAttribute("p", p);


        return "houseDetail";

    }
	
	

	/*@RequestMapping("/houseDetail")
	public String houseDetail(HttpServletRequest request) {
		
	}*/

    @RequestMapping(value = "/reserve.do", method = RequestMethod.GET)//点击预定按钮
    public String reserve(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Object o = session.getAttribute("user");
        String result = "login";
        if (o == null) return result;
        else result = "provider_info";

        return "houseDetail";

    }


    @RequestMapping(value = "/guisearch1/{key}", method = RequestMethod.GET)//区搜索
    public String guisearch1(@PathVariable("key") String key, HttpServletRequest request) {
        List<House_view> list = null;
        if ("gqu1".equals(key)) {//鼓楼仓山晋安马尾台江长乐福清
            list = hvservice.searchqu("福州市鼓楼区");
        } else if ("gqu2".equals(key)) {//象山区
            list = hvservice.searchqu("福州市仓山区");
        } else if ("gqu3".equals(key)) {//秀峰区
            list = hvservice.searchqu("福州市晋安区");
        } else if ("gqu4".equals(key)) {//叠彩区
            list = hvservice.searchqu("福州市马尾区");
        } else if ("gqu5".equals(key)) {//八里街
            list = hvservice.searchqu("福州市台江区");
        } else if ("gqu6".equals(key)) {//灵川县
            list = hvservice.searchqu("福州市长乐区");
        } else if ("gqu7".equals(key)) {//雁山区
            list = hvservice.searchqu("福州市福清区");
        }
        request.setAttribute("list", list);
        System.out.println(list.size());

        int total = list.size() / 10;
        request.setAttribute("total", total);

        request.setAttribute("num", 1);

        return "index";
    }

    @RequestMapping(value = "/guisearch2/{key}", method = RequestMethod.GET)//price
    public String guisearch2(@PathVariable("key") String key, HttpServletRequest request) {
        List<House_view> list = null;
        if ("gp1".equals(key)) {//七星区
            list = hvservice.searchprice("福州市", 0, 250);
        } else if ("gp2".equals(key)) {//象山区
            list = hvservice.searchprice("福州市", 250, 350);
        } else if ("gp3".equals(key)) {//秀峰区
            list = hvservice.searchprice("福州市", 350, 450);
        } else if ("gp4".equals(key)) {//叠彩区
            list = hvservice.searchprice("福州市", 450, 600);
        } else if ("gp5".equals(key)) {//八里街
            list = hvservice.searchprice("福州市", 600, 800);
        } else if ("gp6".equals(key)) {//灵川县
            list = hvservice.searchprice("福州市", 800, 1000);
        }
        request.setAttribute("list", list);
        System.out.println(list.size());

        int total = list.size() / 10;
        request.setAttribute("total", total);

        request.setAttribute("num", 1);


        return "index";
    }


    @RequestMapping(value = "/guisearch3/{key}", method = RequestMethod.GET)//面积搜索
    public String guisearch3(@PathVariable("key") String key, HttpServletRequest request) {

        List<House_view> list = null;

        if ("ga1".equals(key)) {//七星区
            list = hvservice.searcharea("福州市", 0, 30);
        } else if ("ga2".equals(key)) {//象山区
            list = hvservice.searcharea("福州市", 30, 40);
        } else if ("ga3".equals(key)) {//秀峰区
            list = hvservice.searcharea("福州市", 40, 60);
        } else if ("ga4".equals(key)) {//叠彩区
            list = hvservice.searcharea("福州市", 60, 80);
        } else if ("ga5".equals(key)) {//八里街
            list = hvservice.searcharea("福州市", 80, 100);
        }
        request.setAttribute("list", list);
        System.out.println(list.size());

        int total = list.size() / 10;
        request.setAttribute("total", total);

        request.setAttribute("num", 1);

        return "index";
    }

    @RequestMapping(value = "/guisearch4/{key}", method = RequestMethod.GET)//室搜索
    public String guisearch4(@PathVariable("key") String key, HttpServletRequest request) {
        List<House_view> list = null;
        if ("gs1".equals(key)) {//七星区
            list = hvservice.searchshi("福州市", "一室");
        } else if ("gs2".equals(key)) {//象山区
            list = hvservice.searchshi("福州市", "二室");
        } else if ("gs3".equals(key)) {//秀峰区
            list = hvservice.searchshi("福州市", "三室");
        }

        request.setAttribute("list", list);
        System.out.println(list.size());

        int total = list.size() / 10;
        request.setAttribute("total", total);

        request.setAttribute("num", 1);
        return "index";
    }


    @RequestMapping(value = "suporttest", method = RequestMethod.GET)//室搜索
    public void suporttest(HttpServletRequest request) {
        Supporting s = null;
        for (int i = 105; i <= 170; i++) {
            //
            s = new Supporting("h0" + i, "s_ico_iscook", "s_ico_shower", "s_ico_wirelessnetwork", "s_ico_aircondition", "s_ico_elevator",
                    "s_ico_icebox", "s_ico_washer");
            sservice.addSupporting(s);
        }


    }

}
