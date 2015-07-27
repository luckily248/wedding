package controllers

import (
	"github.com/astaxie/beego"
)

type MainController struct {
	beego.Controller
}

func (c *MainController) Get() {

	c.TplNames = "index.tpl"
}
type WeddingpicController struct {
	beego.Controller
}

func (c *WeddingpicController) Get() {
	c.TplNames = "weddingpic.tpl"
}
type ProposingController struct {
	beego.Controller
}

func (c *ProposingController) Get() {
	c.TplNames = "proposing.tpl"
}