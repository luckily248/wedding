package models

import (
	"gopkg.in/mgo.v2/bson"
)

type Message struct {
	BaseDBmodel
	Id   bson.ObjectId `bson:"_id" form:"-" `
	Name    string `form:"name"`
	Message string `form:"msg"`
}

func (this *Message) Tablename() string {
	return "message"
}
func (this *Message)GetId()string{
	return this.Id.Hex()
}
func (this *Message)SetId(id string){
	this.Id = bson.ObjectIdHex(id)
}
func (this *Message) init() (err error) {
	err = this.BaseDBmodel.init()
	if err != nil {
		return
	}
	this.c = this.db.C(this.Tablename())
	return
}
func AddMessage(message *Message)error{
	message.init()
	defer message.session.Close()
	message.Id=bson.NewObjectId()
	return message.c.Insert(message)
}
func GetAllMessage(message *Message)(messages []Message,err error){
	message.init()
	defer message.session.Close()
	message.c.Find(nil).All(&messages)
	return
}
