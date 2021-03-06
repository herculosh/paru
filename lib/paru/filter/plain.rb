#--
# Copyright 2015, 2016, 2017 Huub de Beer <Huub@heerdebeer.org>
#
# This file is part of Paru
#
# Paru is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Paru is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Paru.  If not, see <http://www.gnu.org/licenses/>.
#++
require_relative "./block.rb"
require_relative "./inner_markdown.rb"

module Paru
    module PandocFilter
        # A Plain node is a basic {Block} level node with {Inline} child nodes. Not
        # to be confused with {Para}, which represents a paragraph. A Plain
        # is a more general type of block level node.
        class Plain < Block
            include InnerMarkdown

            # Create a new Plain node based on contents
            #
            # @param contents [Array]
            def initialize(contents)
                super contents, true
            end

            # Has a Plain node inline contents?
            #
            # @return [Boolean] true
            def has_inline?
                true
            end
        end
    end
end
