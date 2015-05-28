require 'calabash-android'
require 'calabash-android/operations'

class BaseClass
  include Calabash::Android::Operations

  def initialize(driver)
    @driver = driver
  end

  def method_missing(sym, *args, &block)
    @driver.send sym, *args, &block
  end

  def field(el_type)
    "#{el_type}"
  end

  def field_id(el_id)
    "* id:'#{el_id}'"
  end

  def field_text(el_text)
    "* text:'#{el_text}'"
  end

  def field_text_id(el_id, el_text)
    "* id:'#{el_id}' text:'#{el_text}'"
  end

  def field_content_desc(el_desc)
    "* contentDescription:'#{el_desc}'"
  end

  def field_marked(el_mark)
    "* marked:'#{el_mark}'"
  end

  def field_textview(el_text)
    "TextView text:'#{el_text}'"
  end

  def tap_on_element(el)
    touch(field(el))
  end

  def tap_on_element_id(el_id)
    touch(field_id(el_id))
  end

  def tap_on_element_by_content_description(el_content_desc)
    touch(field_content_desc(el_content_desc))
  end

  def tap_on_text(el_text)
    touch(field_text(el_text))
  end

  def tap_and_hold(element)
    performAction('press_long_on_text', element)    
  end

  def tap_on_id_and_text(el_id, el_text)
    touch(field_text_id(el_id, el_text))   
  end

  def exists?(el)
    element_exists(field_marked(el))
  end

  def view_exists?(el_text)
    element_exists(field_text(el_text))  
  end

  def exists_id(id)
    element_exists(field_id(id))
  end

  def exists_el(el)
    query(field(el))
  end

  def exist_id_text(el_id, el_text)
    element_exists(field_text_id(el_id, el_text))  
  end

  def element_invisible(el_id)
    element_does_not_exist(field_id(el_id))
  end

  def clear_text_field(el_id)
    query(field_id(el_id), :setText => "")
  end

  def keyborad_enter_text_by_text(el, text)
    query(field_text(el), {:setText => text})
  end

  def keyboard_enter_text_by_id(el_id, text)
    query(field_id(el_id), {:setText => text})
  end

  def keyboard_enter_text_by_element(el, text)
    query(field(el), {:setText => text})
  end

  def if_exist(id_el)
    check_element_exists(field_id(id_el))
  end

  def if_not_exist(id_el)
    check_element_does_not_exist(field_id(id_el))
    screenshot
  end

  def if_text_not_exist(el_text)
    check_element_does_not_exist(field_text(el_text))
  end

  def wait_for_no_progress_bars
    performAction('wait_for_no_progress_bars')
  end

  def wait_for_dialog_to_close
    performAction('wait_for_dialog_to_close')
  end

  def wait_for_element(element)
    wait_for { exists?(element) }
  end

  def wait_for_text(text)
    wait_for { view_exists?(text) } 
  end

  def wait_seconds(seconds)
    performAction('wait', seconds)
  end

  def wait_for_trait(el_text)
    wait_for(:timeout => 10) do 
      trait = query("* text:'#{el_text}'")
    end
  end

  def wait_for_id(el_id)
    wait_for(:timeout => 10) do 
      id = query("* id:'#{el_id}'")
    end
  end

  def enabled?(element, state)
    query("#{element} enabled:#{state}")
  end

  def scroll_down_until_see(el_text)
    textToFind = query(field_textview(el_text))
        while textToFind.empty?
            performAction('scroll_down')
            textToFind = query(field_textview(el_text))
        end   
  end

  def scroll_up_until_see(el_text)
    textToFind = query(field_textview(el_text))
        while textToFind.empty?
            performAction('scroll_up')
            textToFind = query(field_textview(el_text))
        end   
  end

  def scroll_to_top
    scroll_to_top_or_bottom(:up)
  end

  def scroll_to_bottom
    scroll_to_top_or_bottom(:down)
  end

  def scroll_to_top_or_bottom(direction)
    current_screen = query('*')
    begin
      prev_screen = current_screen
      case direction
        when :up
          performAction('scroll_up')
        when :down
          performAction('scroll_down')
      end
      current_screen = query('*')
    end while (current_screen != prev_screen)
  end

  def find_in_list(query_string)
    query_result = query(query_string)
    current_screen_state = query('*')
    prev_screen_state = []

      while (query_result.empty? and current_screen_state != prev_screen_state)
        prev_screen_state = current_screen_state
        performAction('scroll_down')
        query_result = query(query_string)
        current_screen_state = query('*')
      end

      return query_result
  end

  def select_item_from_spinner(what,spinner)
    touch(spinner)
    performAction('wait',2)
    if element_does_not_exist(what)
       find_in_list(what)
    end
    performAction('wait',2)
    touch(what) 
    performAction('wait',2)
  end

  def select_first_available_option_from_spinner(spinner)
    touch(spinner)
    performAction('wait',2)
    touch("* id:'text1'") 
    performAction('wait',2)
  end

  def touchCoordinates(xPos, yPos)
    xPos = xPos.to_s
    yPos = yPos.to_s
    performAction('touch_coordinate', xPos, yPos)
    
  end

  def pressLongOnCoordinates(xPos, yPos)
    xPos = xPos.to_s
    yPos = yPos.to_s
    performAction('press_long_on_coord', xPos, yPos)  
  end

  def screenshoot_while_fail
    wait_for(:screenshot_on_error => true)
  end

  def self.element(name, &block)
    define_method(name.to_s, &block)
  end

  class << self
    alias :value :element
    alias :action :element
  end

end