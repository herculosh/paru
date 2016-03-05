module Paru
    module PandocFilter
        require_relative "./inline"
        require_relative "./attr"

        class Code < Inline
            attr_accessor :attr, :string

            def initialize contents
                @attr = Attr.new contents[0]
                @string = contents[1]
            end

            def ast_contents
                [
                    @attr.to_ast,
                    @string
                ]
            end
        end
    end
end
