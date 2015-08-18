/**
 * Copyright 2014 @ z3q.net.
 * name :
 * author : jarryliu
 * date : 2014-02-05 21:53
 * description :
 * history :
 */
package partner

import (
	"github.com/jrsix/gof/web"
	"github.com/jrsix/gof/web/mvc"
	"go2o/src/app/front"
)

var _ mvc.Filter = new(commC)

type commC struct {
	*baseC
	*front.WebCgi
}

func (this *mainC) GeoLocation(ctx *web.Context) {
	this.WebCgi.GeoLocation(ctx)
}

//地区Json
//func (this *mainC) ChinaJson(ctx *web.Context) {
//	var node *tree.TreeNode = dao.Common().GetChinaTree()
//	json, _ := json.Marshal(node)
//	w.Write(json)
//}
