--[[
    Generated from Kristal\src\utils\collision.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/utils/collision.lua
]]

---@meta

CollisionUtil = {}

function CollisionUtil.pointPoint(x1,y1, x2,y2) end

function CollisionUtil.pointPointInside(x1,y1, x2,y2) end

function CollisionUtil.pointCircle(px,py, cx,cy,cr) end

function CollisionUtil.pointCircleInside(px,py, cx,cy,cr) end

function CollisionUtil.pointRect(px,py, rx,ry,rw,rh) end

function CollisionUtil.pointRectInside(px,py, rx,ry,rw,rh) end

function CollisionUtil.pointLine(px,py, x1,y1,x2,y2, precision) end

function CollisionUtil.pointLineInside(px,py, x1,y1,x2,y2, precision) end

function CollisionUtil.pointPolygon(px,py, poly) end

function CollisionUtil.pointPolygonInside(px,py, poly) end

function CollisionUtil.circlePoint(cx,cy,cr, px,py) end

function CollisionUtil.circlePointInside(cx,cy,cr, px,py) end

function CollisionUtil.circleCircle(x1,y1,r1, x2,y2,r2) end

function CollisionUtil.circleCircleInside(x1,y1,r1, x2,y2,r2) end

function CollisionUtil.circleRect(cx,cy,cr, rx,ry,rw,rh) end

function CollisionUtil.circleRectInside(cx,cy,cr, rx,ry,rw,rh) end

function CollisionUtil.circleLine(cx,cy,cr, x1,y1,x2,y2) end

function CollisionUtil.circleLineInside(cx,cy,cr, x1,y1,x2,y2) end

function CollisionUtil.circlePolygon(cx,cy,cr, poly) end

function CollisionUtil.circlePolygonInside(cx,cy,cr, poly) end

function CollisionUtil.rectPoint(rx,ry,rw,rh, px,py) end

function CollisionUtil.rectPointInside(rx,ry,rw,rh, px,py) end

function CollisionUtil.rectCircle(rx,ry,rw,rh, cx,cy,cr) end

function CollisionUtil.rectCircleInside(rx,ry,rw,rh, cx,cy,cr) end

function CollisionUtil.rectRect(x1,y1,w1,h1, x2,y2,w2,h2) end

function CollisionUtil.rectRectInside(x1,y1,w1,h1, x2,y2,w2,h2) end

function CollisionUtil.rectLine(rx,ry,rw,rh, x1,y1,x2,y2) end

function CollisionUtil.rectLineInside(rx,ry,rw,rh, x1,y1,x2,y2) end

function CollisionUtil.rectPolygon(rx,ry,rw,rh, poly) end

function CollisionUtil.rectPolygonInside(rx,ry,rw,rh, poly) end

function CollisionUtil.linePoint(x1,y1,x2,y2, px,py, precision) end

function CollisionUtil.linePointInside(x1,y1,x2,y2, px,py, precision) end

function CollisionUtil.lineCircle(x1,y1,x2,y2, cx,cy,cr) end

function CollisionUtil.lineCircleInside(x1,y1,x2,y2, cx,cy,cr) end

function CollisionUtil.lineRect(x1,y1,x2,y2, rx,ry,rw,rh) end

function CollisionUtil.lineRectInside(x1,y1,x2,y2, rx,ry,rw,rh) end

function CollisionUtil.lineLine(x1,y1,x2,y2, x3,y3,x4,y4) end

function CollisionUtil.lineLineInside(x1,y1,x2,y2, x3,y3,x4,y4) end

function CollisionUtil.linePolygon(x1,y1,x2,y2, poly) end

function CollisionUtil.linePolygonInside(x1,y1,x2,y2, poly) end

function CollisionUtil.polygonPoint(poly, px,py) end

function CollisionUtil.polygonPointInside(poly, px,py) end

function CollisionUtil.polygonCircle(poly, cx,cy,cr) end

function CollisionUtil.polygonCircleInside(poly, cx,cy,cr) end

function CollisionUtil.polygonRect(poly, rx,ry,rw,rh) end

function CollisionUtil.polygonRectInside(poly, rx,ry,rw,rh) end

function CollisionUtil.polygonLine(poly, x1,y1,x2,y2) end

function CollisionUtil.polygonLineInside(poly, x1,y1,x2,y2) end

function CollisionUtil.polygonPolygon(poly1, poly2) end

function CollisionUtil.polygonPolygonInside(poly1, poly2) end

