local M = {}
local active = true

M.activate = function()
  active = true
end

M.deactivate = function()
  active = false
end

M.update_ui = function()
  if not active then
    buffer.margin_type_n[0] = buffer.MARGIN_NUMBER
    return
  end
  buffer.margin_type_n[0] = buffer.MARGIN_RTEXT
  local curr_line = buffer:line_from_position(buffer.current_pos)
  for i=0,(buffer.line_count-1) do
    buffer.margin_text[i] = i == curr_line
      and curr_line
      or tostring(math.abs(i - curr_line))
  end
end

events.connect(events.UPDATE_UI, M.update_ui)
--events.connect(events.BUFFER_AFTER_SWITCH, M.update_ui)
return M