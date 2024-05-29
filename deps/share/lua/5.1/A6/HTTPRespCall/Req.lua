-- automatically generated by the FlatBuffers compiler, do not modify

-- namespace: HTTPRespCall

local flatbuffers = require('flatbuffers')

local Req = {} -- the module
local Req_mt = {} -- the class metatable

function Req.New()
    local o = {}
    setmetatable(o, {__index = Req_mt})
    return o
end
function Req.GetRootAsReq(buf, offset)
    if type(buf) == "string" then
        buf = flatbuffers.binaryArray.New(buf)
    end
    local n = flatbuffers.N.UOffsetT:Unpack(buf, offset)
    local o = Req.New()
    o:Init(buf, n + offset)
    return o
end
function Req_mt:Init(buf, pos)
    self.view = flatbuffers.view.New(buf, pos)
end
function Req_mt:Id()
    local o = self.view:Offset(4)
    if o ~= 0 then
        return self.view:Get(flatbuffers.N.Uint32, o + self.view.pos)
    end
    return 0
end
function Req_mt:Status()
    local o = self.view:Offset(6)
    if o ~= 0 then
        return self.view:Get(flatbuffers.N.Uint16, o + self.view.pos)
    end
    return 0
end
function Req_mt:Headers(j)
    local o = self.view:Offset(8)
    if o ~= 0 then
        local x = self.view:Vector(o)
        x = x + ((j-1) * 4)
        x = self.view:Indirect(x)
        local obj = require('A6.TextEntry').New()
        obj:Init(self.view.bytes, x)
        return obj
    end
end
function Req_mt:HeadersLength()
    local o = self.view:Offset(8)
    if o ~= 0 then
        return self.view:VectorLen(o)
    end
    return 0
end
function Req_mt:ConfToken()
    local o = self.view:Offset(10)
    if o ~= 0 then
        return self.view:Get(flatbuffers.N.Uint32, o + self.view.pos)
    end
    return 0
end
function Req.Start(builder) builder:StartObject(4) end
function Req.AddId(builder, id) builder:PrependUint32Slot(0, id, 0) end
function Req.AddStatus(builder, status) builder:PrependUint16Slot(1, status, 0) end
function Req.AddHeaders(builder, headers) builder:PrependUOffsetTRelativeSlot(2, headers, 0) end
function Req.StartHeadersVector(builder, numElems) return builder:StartVector(4, numElems, 4) end
function Req.AddConfToken(builder, confToken) builder:PrependUint32Slot(3, confToken, 0) end
function Req.End(builder) return builder:EndObject() end

return Req -- return the module