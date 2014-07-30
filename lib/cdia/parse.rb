require 'ripper'

class Cdia::Parse < Ripper
  attr_accessor :code

  def initialize(src)
    super(src)
    @code = Array.new()
    @klass = Hash.new()
    @method = Array.new()
  end

  def on_class(name, arg, data)
    @klass = { :"#{name}" => @method.dup }
    @code << @klass.dup
    @method.clear
  end

  def on_def(method, arg, data)
    @method << method + method_params(arg)
  end

  def method_params(arg)
    params = ''
    if arg
      arg.each do |s|
        params << "(#{s})"
      end
      params.gsub!(/\)\(/, ',') if /\)\(/ =~ params
    else
      params = '()'
    end
    params
  end

end