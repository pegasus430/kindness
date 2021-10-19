class ReservsController < ApplicationController
  def index
    @regions = Region.all
    @q = Store.ransack(params[:q])
    @stores = @q.result(distinct: true).order(created_at: :desc).paginate(page: params[:page], per_page: 9)
    # // render template: 'traffics/hotel_index'
    @custom_paginate_renderer =  Class.new(WillPaginate::ActionView::LinkRenderer) do

      def pagination
        items = @options[:page_links] ? windowed_page_numbers.take(5) : []
        items
      end

      def last_page
        previous_or_next_page(total_pages, @options[:last_label], "last_page")
      end


      def page_number(page)
        unless page == current_page
          link(page, page, :rel => rel_value(page))
        else
          link(page, "#", :class => 'active')
        end
      end

      def gap
        text = @template.will_paginate_translate(:page_gap) { '&hellip;' }
        %(<li class="disabled"><a>#{text}</a></li>)
      end

      def next_page
        num = @collection.current_page < @collection.total_pages && @collection.current_page + 1
        previous_or_next_page(num, @options[:next_label], 'next')
      end

      def previous_or_next_page(page, text, classname)
        if page
          link(text, page, :class => classname)
        else
          link(text, "#", :class => classname + ' disabled')
        end
      end

      def html_container(html)
        tag(:div, tag(:ul, html, class: ""), class: "pagination")
      end

      private

      def link(text, target, attributes = {})
        if target.is_a? Fixnum
          attributes[:rel] = rel_value(target)
          target = url(target)
        end

        unless target == "#"
          attributes[:href] = target
        end

        classname = attributes[:class]
        attributes.delete(:classname)
        tag(:li, tag(:a, text, attributes), :class => classname)
      end
    end
  end

  def show
    @store = Store.find(params[:id])
    @rooms = @store.rooms
    @credit_cards_zh_tw = @store.credit_cards_zh_tw.nil? ? [] : eval(@store.credit_cards_zh_tw)
    @credit_cards_en = @store.credit_cards_en.nil? ? [] : eval(@store.credit_cards_en)
  end
end
