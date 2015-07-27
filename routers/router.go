package routers

import (
	"wedding/controllers"
	"github.com/astaxie/beego"
)

func init() {
    beego.Router("/", &controllers.MainController{})
	beego.Router("/weddingpic", &controllers.WeddingpicController{})
	beego.Router("/proposing", &controllers.ProposingController{})
}
