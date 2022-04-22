
class Navigator
    def tap_hamburger
        find_element(xpath:"//android.widget.ImageButton[@content-desc='Open navigation drawer']").click
    end

    def list
        return find_element(id: "io.qaninja.android.twp:id/tvNavTitle") 
    end

    def tap_by_text(target)
        find_element(xpath: "//android.widget.TextView[@text='#{target}']").click
    end
end