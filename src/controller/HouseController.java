package controller;

import entity.House;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import service.HouseService;

import java.util.List;

/**
 * @Author: hyz
 * @Date: 11:40 2018/4/19
 * @Description:
 */
@Controller
@RequestMapping("/house")
public class HouseController {
    @Autowired
    HouseService houseService;

    private int count;
    private StringBuffer sb = new StringBuffer("");


    @RequestMapping(value = "/all")
    public String queryAll(Model model) {
        //每页显示的数量--y

        int sqlNum = 0;
        List<House> houseList = houseService.queryAll(sqlNum);
        model.addAttribute("houseList", houseList);
        return "zhaofang";
    }

    @RequestMapping(value = "/all_pager", params = "pNum")
    public String pager(@RequestParam String pNum, Model model) {
        //每页显示的数量--y
        int sqlNum = ((Integer.parseInt(pNum)) - 1) * 2;
        List<House> houseList = houseService.queryAll(sqlNum);
        model.addAttribute("houseList", houseList);
        return "zhaofang";
    }

    //
    // @RequestMapping("/{eAreaName}")
    // public String queryByArea(@PathVariable("eAreaName") String eAreaName, Model model) {
    //     System.err.println("*********************");
    //     // List<House> houseList = houseService.queryByeAreaName(eAreaName);
    //     // model.addAttribute("houseList", houseList);
    //     return "zhaofang";
    // }

//     @RequestMapping("/query")
//     public String query(
//             @RequestParam(value = "price01", required = false) String price01, @RequestParam(value = "price02", required = false) String price02,
//             @RequestParam(value = "areaId", required = false) String areaId, @RequestParam(value = "zType", required = false) String zType,
//             @RequestParam(value = "roomNum", required = false) String roomNum, @RequestParam(value = "special", required = false) String special,
//             @RequestParam(value = "special", required = false) String pNum,
// //            @RequestParam String id,
//             Model model
//     ) {
// //        判断传递的参数是否为空
//
// //        判断价格
// //        if ((price01 != null && price01 != "") && (price02.equals("0") || price02 == null || price02 == "")) {
// //            model.addAttribute("param", "1");
// //        }
// //        if ((price02 != null && price02 != "") && (price01.equals("0") || price01 == null || price01 == "")) {
// //            model.addAttribute("param", "1");
// //        }
// //        if ((price01 != null && price01 != "") && (price02 != null && price02 != "")) {
// //            model.addAttribute("param", "1");
// //        }
//
// //判断区域
// //        if (areaId != null && price01 != "") {
// //            model.addAttribute("param", "1");
// //        }
// //        if (price01 != null && price01 != "") {
// //            model.addAttribute("param", "1");
// //        }
// //        if (price01 != null && price01 != "") {
// //            model.addAttribute("param", "1");
// //        }
// //        if (price01 != null && price01 != "") {
// //            model.addAttribute("param", "1");
// //        }
// //        if (price01 != null && price01 != "") {
// //            model.addAttribute("param", "1");
// //        }
//
//
//         List<House> houseList = houseService.queryByCondition(Integer.parseInt(price01), Integer.parseInt(price02), Integer.parseInt(areaId), Integer.parseInt(zType), Integer.parseInt(roomNum), Integer.parseInt(special), Integer.parseInt(pNum));
// //        List<House> houseList = houseService.queryByCondition(Integer.parseInt(price01), Integer.parseInt(price02), 0, 0,0, 0);
//
// //        House house = houseService.queryById(Integer.parseInt(id));
// //        System.out.println(house.getFloor()+" "+house.getAddress());
//         model.addAttribute("houseList", houseList);
// //        model.addAttribute("house",houseList.get(3));
// //        model.addAttribute("house",house);
//         System.err.println("***************************结束查询");
//         return "zhaofang";
//
//     }


    /**
     * 房屋详情
     *
     * @param
     * @param model
     * @return
     */
    @RequestMapping("/content")
    public String houseContent(@RequestParam String id, Model model) {
        House house = houseService.queryById(Integer.parseInt(id));
        if (!house.getzTypeContext().equals("整租")) {
            house.setzTypeContext(house.getzTypeContext().substring(2));
        }
        model.addAttribute("house", house);
        return "houseContent";
    }

    /**
     * 动态查询
     * @param appType
     * @param model
     * @return
     */
    @RequestMapping(value = "/sh/{appType}", method = RequestMethod.GET)
    public String sh(@PathVariable("appType") String appType,
                     Model model) {
        //查询重复的个数
        count = 0;
        //分页参数
        String sqlNum = "";
        sb.setLength(0);
        sb.append(appType);
        //判断分页
        int pagerNum = sb.indexOf("_p");
        if (pagerNum != -1) {
            if (pagerNum < sb.length() - 3) {
                sb.replace(pagerNum, pagerNum + 3, "");
                return "redirect:/house/sh/" + sb.toString();
            }
        }

        System.err.println("*****************************");

        if (appType.equals("all")) {
            sb.setLength(0);
            return "redirect:/house/all";
        }

        // 区域id  areaId
        int a = 0;
        // 街道 id streenId
        int b = 0;
        // 价格范围 price
        int c1 = 0;
        int c2 = 0;
        // 租赁类型 zType
        int d = 0;
        // 卧室数目 roomNum
        int e = 0;
        //特色 special
        StringBuffer f = new StringBuffer();
        // String f = "";


        //判断区域名字
        if (sb.indexOf("a") != -1) {
            for (int i = 1; i < 6; i++) {
                String word = "a";
                //第一个a的下标
                int idx = sb.indexOf(word);
                //最后一个a的下标
                int idx2 = sb.lastIndexOf(word);
                if (idx != -1) {
                    index(sb.toString(), word);
                    //判断含有几个重复的
                    if (count > 1) {
                        count = 0;
                        String wd = sb.substring(idx2);

                        index(sb.toString(), wd);
                        //判断是否有 完全重复的,有就全部删除
                        if (count > 1) {
                            sb = replaceAll(sb, wd, "");
                            if (sb.toString().length() == 0) {
                                count = 0;
                                return "redirect:/house/all";
                            } else {
                                count = 0;
                                return "redirect:/house/sh/" + sb.toString();
                            }
                        }
                        //没有完全重复，删除最前面的
                        sb.replace(idx, idx + 2, "");
                        count = 0;
                        return "redirect:/house/sh/" + sb.toString();
                    } else {

                        //没有重复的就执行
                        if (sb.indexOf("a" + i) != -1) {
                            a += i;
                            break;
                        } else {
                            count = 0;
                        }
                    }
                }

            }
            count = 0;

        }


        //判断街道名字
        // if (sb.indexOf("b") != -1) {
        //     for (int i = 1; i < 13; i++) {
        //        
        //         //
        //         // if (sb.indexOf("b" + i) != -1) {
        //         //     String word = "b" + i;
        //         //
        //         //     //判断含有几个 word
        //         //     index(sb.toString(), word);
        //         //     if (count > 1) {
        //         //         count = 0;
        //         //         break;
        //         //     } else {
        //         //         count = 0;
        //         //         b += i;
        //         //         break;
        //         //     }
        //         // }
        //     }
        // }

        //判断价格范围

        if (sb.indexOf("c") != -1) {
            for (int i = 1; i < 7; i++) {

                String word = "c";
                //第一个c的下标
                int idx1 = sb.indexOf(word);
                //最后一个c的下标
                int idx2 = sb.lastIndexOf(word);

                if (idx1 != -1) {
                    index(sb.toString(), word);

                    //判断含有几个重复的
                    if (count > 1) {
                        count = 0;
                        //获取最后点击的位置
                        String wd = sb.substring(idx2);
                        index(sb.toString(), wd);
                        if (count > 1) {
                            //判断是否有 完全重复的,有就全部删除
                            sb = replaceAll(sb, wd, "");
                            if (sb.toString().length() == 0) {
                                count = 0;
                                return "redirect:/house/all";
                            } else {
                                count = 0;
                                return "redirect:/house/sh/" + sb.toString();
                            }
                        }
                        //没有完全重复，删除最前面的
                        sb.replace(idx1, idx1 + 2, "");
                        count = 0;
                        return "redirect:/house/sh/" + sb.toString();
                    } else {
                        //没有重复的就执行
                        if (sb.indexOf("c" + i) != -1) {
                            if (i == 1) {
                                c1 += 1000;
                                break;
                            } else if (i == 5) {
                                c2 += 5000;
                                break;
                            } else {
                                c1 += (1000 * (i - 1));
                                c2 += (1000 * i);
                            }
                            break;
                        } else {
                            count = 0;
                        }
                    }
                }
            }
            count = 0;


            // for (int i = 1; i < 6; i++) {
            //
            //     String word = "c" + i;
            //     if (sb.indexOf(word) != -1) {
            //
            //         //判断含有几个 word
            //         index(sb.toString(), word);
            //         if (count > 1) {
            //             count = 0;
            //             break;
            //         } else {
            //             count = 0;
            //             if (i == 1) {
            //                 c1 += 1500;
            //                 break;
            //             } else if (i == 5) {
            //                 c2 += 5000;
            //                 break;
            //             } else {
            //                 c1 += (1000 * (i - 1));
            //                 c2 += (1000 * i);
            //             }
            //             break;
            //         }
            //
            //     }
            //
            // }

        }

        //判断 租赁类型
        if (sb.indexOf("d") != -1) {
            for (int i = 1; i < 3; i++) {
                String word = "d";
                //第一个d的下标
                int idx = sb.indexOf(word);
                //最后一个d的下标
                int idx2 = sb.lastIndexOf(word);
                if (idx != -1) {
                    index(sb.toString(), word);
                    //判断含有几个重复的
                    if (count > 1) {
                        count = 0;
                        String wd = sb.substring(idx2);

                        index(sb.toString(), wd);
                        //判断是否有 完全重复的,有就全部删除
                        if (count > 1) {
                            sb = replaceAll(sb, wd, "");
                            if (sb.toString().length() == 0) {
                                count = 0;
                                return "redirect:/house/all";
                            } else {
                                count = 0;
                                return "redirect:/house/sh/" + sb.toString();
                            }
                        }
                        //没有完全重复，删除最前面的
                        sb.replace(idx, idx + 2, "");
                        count = 0;
                        return "redirect:/house/sh/" + sb.toString();
                    } else {

                        //没有重复的就执行
                        if (sb.indexOf("d" + i) != -1) {
                            d += i;
                            break;
                        } else {
                            count = 0;
                        }
                    }
                }

            }
            count = 0;
        }

        //判断 卧室数目
        if (sb.indexOf("e") != -1) {
            for (int i = 1; i < 5; i++) {
                String word = "e";
                //第一个e的下标
                int idx = sb.indexOf(word);
                //最后一个e的下标
                int idx2 = sb.lastIndexOf(word);
                if (idx != -1) {
                    index(sb.toString(), word);
                    //判断含有几个重复的
                    if (count > 1) {
                        count = 0;
                        String wd = sb.substring(idx2);

                        index(sb.toString(), wd);
                        //判断是否有 完全重复的,有就全部删除
                        if (count > 1) {
                            sb = replaceAll(sb, wd, "");
                            if (sb.toString().length() == 0) {
                                count = 0;
                                return "redirect:/house/all";
                            } else {
                                count = 0;
                                return "redirect:/house/sh/" + sb.toString();
                            }
                        }
                        //没有完全重复，删除最前面的
                        sb.replace(idx, idx + 2, "");
                        count = 0;
                        return "redirect:/house/sh/" + sb.toString();
                    } else {

                        //没有重复的就执行
                        if (sb.indexOf("e" + i) != -1) {
                            e += i;
                            break;
                        } else {
                            count = 0;
                        }
                    }
                }

            }

        }

        // 判断特色
        if (sb.indexOf("f") != -1) {
            for (int i = 1; i < 8; i++) {
                String word = "f";
                //第一个a的下标
                int idx = sb.indexOf(word);
                //最后一个a的下标
                int idx2 = sb.lastIndexOf(word);
                if (idx != -1) {
                    index(sb.toString(), word);
                    //判断含有几个重复的
                    if (count > 1) {
                        count = 0;
                        String wd = sb.substring(idx2);

                        index(sb.toString(), wd);
                        //判断是否有 完全重复的,有就全部删除
                        if (count > 1) {
                            sb = replaceAll(sb, wd, "");
                            if (sb.toString().length() == 0) {
                                count = 0;
                                return "redirect:/house/all";
                            } else {
                                count = 0;
                                return "redirect:/house/sh/" + sb.toString();
                            }
                        }
                        //没有完全重复，删除最前面的
                        // sb.replace(idx, idx + 2, "");
                        count = 0;
                        // return "redirect:/house/sh/" + sb.toString();
                        if (sb.indexOf("f" + i) != -1) {
                            f.append(i);
                            continue;
                        } else {
                            count = 0;
                        }
                    } else {

                        //没有重复的就执行
                        if (sb.indexOf("f" + i) != -1) {
                            f.append(i);
                            break;
                        } else {
                            count = 0;
                        }
                    }
                }

            }
        } else {
            f.append(0);
        }
        System.out.println(count);

        //判断是否分页
        if (appType.contains("_p")) {
            int pgNum = appType.indexOf("_p");
            sqlNum += appType.substring(pgNum + 2);
        } else {
            sqlNum += 1;
        }


        if (appType.equals("all")) {
            sb.setLength(0);
            return "redirect:/house/all";
        }
        if (a == 0 && b == 0 & c1 == 0 & c2 == 0 & d == 0 & e == 0 & e == 0 & Integer.parseInt(f.toString()) == 0 & Integer.parseInt(sqlNum) == 0) {
            sb.setLength(0);
            return "redirect:/house/all";
        }
       int sqlN = (Integer.parseInt(sqlNum)-1)*2;

        System.err.println("**********************" + f);
        //开始查询
        List<House> houseList = houseService.queryByCondition(a, b, c1, c2, d, e, Integer.parseInt(f.toString()), sqlN);


        // char[] chars = sb.toString().toCharArray();
        // for (char c : chars) {
        //
        // }
        //页面共几页
        int pSize = 0;
        if (houseList.size()%2==0){
            pSize =(houseList.size()/2);
        }else {
            pSize =(houseList.size()/2)+1;
        }
        int ListSize = houseList.size();



        model.addAttribute("houseList", houseList);
        model.addAttribute("pSize", pSize);
        model.addAttribute("ListSize", ListSize);
        System.out.println("**");
        sb.setLength(0);
        return "zhaofang";
    }

    /**
     * 通过采用indexOf + substring + 递归的方式来获取指定字符的数量
     *
     * @param text 指定要搜索的字符串
     */
    private void index(String text, String word) {
        // 判断字符串中,是否包含指定的字符
        int indexs = text.indexOf(word);
        if (indexs != -1) { // 指定的字符串中包含指定的字符
            count++; // 数量+1
            if (indexs < text.length() - 1) { // 如果包含该指定字符的位置,不是位于最后,则继续截取之后的字符串递归进行搜索
                // 截取之后的字符串
                text = text.substring(indexs + 1);
                // 调用自身方法，递归进行搜索
                index(text, word);
            }
        }

    }

    /**
     * 替换字符串
     *
     * @param sb
     * @param oldStr
     * @param newStr
     * @return
     */
    public StringBuffer replaceAll(StringBuffer sb, String oldStr, String newStr) {
        int i = sb.indexOf(oldStr);
        int oldLen = oldStr.length();
        int newLen = newStr.length();
        while (i > -1) {
            sb.delete(i, i + oldLen);
            sb.insert(i, newStr);
            i = sb.indexOf(oldStr, i + newLen);
        }
        return sb;
    }


    public HouseService getHouseService() {
        return houseService;
    }

    public void setHouseService(HouseService houseService) {
        this.houseService = houseService;
    }
}
