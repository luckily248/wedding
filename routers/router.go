package routers

import (
	"github.com/astaxie/beego"
	"wedding/controllers"
)

func init() {
	beego.Router("/", &controllers.MainController{})
	beego.Router("/weddingpic", &controllers.WeddingpicController{})
	beego.Router("/proposing", &controllers.ProposingController{})
	beego.Router("/nomalpic", &controllers.NomalpicController{})
}
