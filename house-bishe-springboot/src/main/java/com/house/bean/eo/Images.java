package com.house.bean.eo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Images {
    private String images_id;//图片id
    private String house_id;//图片所属房屋
    private String basepath;//路径

}
