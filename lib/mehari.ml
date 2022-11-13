type request = Request.t
type response = Response.t
type handler = request -> response Lwt.t
type route = Router.t
type 'a status = 'a Response.status
type mime = Mime.t
type body = Response.body

let uri = Request.uri
let addr = Request.addr
let port = Request.port

include Response.Status
module Gemtext = Gemtext

let text = Response.text
let gemtext = Response.gemtext
let lines = Response.lines
let page = Response.page

include Mime

let make_mime = Mime.make
let response = Response.response
let respond = Response.respond
let respond_text = Response.respond_text
let respond_gemtext = Response.respond_gemtext
let respond_document = Response.respond_document
let router = Router.router
let route = Router.route
let scope = Router.scope
let serve = Server.serve
let run = Server.run
