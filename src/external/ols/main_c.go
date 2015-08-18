/**
 * Copyright 2013 @ z3q.net.
 * name :
 * author : jarryliu
 * date : 2013-02-04 20:13
 * description :
 * history :
 */
package ols

import (
	"github.com/jrsix/gof"
	"github.com/jrsix/gof/web"
	"go2o/src/cache/apicache"
	"html/template"
)

//todo: filter valid partner is nil
type mainC struct {
	*baseC
}

// 处理跳转
func (this *mainC) HandleIndexGo(ctx *web.Context) bool {
	r, w := ctx.Request, ctx.Response
	g := r.URL.Query().Get("go")
	if g == "buy" {
		w.Header().Add("Location", "/list")
		w.WriteHeader(302)
		return true
	}
	return false
}

func (this *mainC) Index(ctx *web.Context) {
	if this.Requesting(ctx) {
		_, w := ctx.Request, ctx.Response
		p := this.GetPartner(ctx)

		if this.HandleIndexGo(ctx) {
			return
		}

		pa := this.GetPartnerApi(ctx)

		if b, siteConf := GetSiteConf(w, p, pa); b {
			shops := apicache.GetShops(ctx.App, p.Id, pa.ApiSecret)
			if shops == nil {
				shops = []byte("{}")
			}
			ctx.App.Template().Execute(w, gof.TemplateDataMap{
				"partner": p,
				"conf":    siteConf,
				"shops":   template.HTML(shops),
			},
				"views/shop/ols/{device}/index.html",
				"views/shop/ols/{device}/inc/header.html",
				"views/shop/ols/{device}/inc/footer.html")
		}
	}
}
