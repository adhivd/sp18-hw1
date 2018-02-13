class Foobar

  def self.baz(a)
    # Class method, not an instance method
    # Call with `Foobar.baz`
    # convert strings --> ints
    sum = 0
    a.map! do | el |
        el = el.to_i
        el = el + 2
        if el % 2 != 0 || el >= 10
            a.delete(el)
            next
        end
        sum += el
    end
    sum
  end
end

# puts Foobar.baz(['1','2','3','4','5','10'])
