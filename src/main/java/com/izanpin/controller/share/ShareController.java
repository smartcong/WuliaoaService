package com.izanpin.controller.share;

import com.izanpin.common.base.BaseController;
import com.izanpin.entity.Article;
import com.izanpin.service.ArticleService;
import com.izanpin.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by pengyuancong on 2017/1/29.
 */
@RequestMapping(value = "/share")
@Controller
public class ShareController extends BaseController {
    @Autowired
    ArticleService articleService;
    @Autowired
    CommentService commentService;

    /**
     * 分享
     */
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public ModelAndView detail(@PathVariable("id") Long id) {
        ModelAndView mv = new ModelAndView("/share/detail");
        mv.addObject("article", articleService.getById(id));
        mv.addObject("comments", commentService.getComments(id, 1, 10));
        return mv;
    }
}