package controllers

import (
	"fmt"
	"github.com/astaxie/beego"
	."wedding/models"
)

type MainController struct {
	beego.Controller
}

func (c *MainController) Post() {
	message:=&Message{}
	err:=c.ParseForm(message)
	if err!=nil{
		fmt.Printf("parseform err:%s\n",err.Error())
		c.Ctx.Output.Status=404
		return
	}
	err=AddMessage(message)
	if err!=nil{
		fmt.Printf("add err:%s\n",err.Error())
		c.Ctx.Output.Status=404
		return
	}
	message2:=&Message{}
	messages,err:= GetAllMessage(message2)
	if err!=nil{
		fmt.Printf("getall err:%s\n",err.Error())
		c.Ctx.Output.Status=404
		return
	}
	c.Data["messages"]=messages
	c.TplNames = "index.tpl"
}

func (c *MainController) Get() {
	message:=&Message{}
	messages,err:= GetAllMessage(message)
	if err!=nil{
		fmt.Printf("model err:%s\n",err.Error())
		c.Ctx.Output.Status=404
		return
	}
	c.Data["messages"]=messages
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

type NomalpicController struct{
	beego.Controller
}

func (c *NomalpicController) Get(){
	c.TplNames="nomalpic.tpl"
}
