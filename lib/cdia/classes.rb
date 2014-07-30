module Cdia
  module Classes

    def subclasses
      subclasses = []
      ObjectSpace.each_object(singleton_class) do |k|
        subclasses << k if k.superclass == self
      end
      subclasses
    end

    def ins_methods
      ins_method = self.instance_methods - self.superclass.instance_methods
    end
  end
end

