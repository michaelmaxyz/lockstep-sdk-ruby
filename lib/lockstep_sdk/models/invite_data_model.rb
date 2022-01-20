#
# Lockstep Software Development Kit for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Ted Spence <tspence@lockstep.io>
# @author     Manish Narayanan <manish.n@lockstep.io>
# @author     Rishi Rajkumar Jawahar <rjawahar@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @version    2022.3
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


module LockstepSdk

    # Model containing information about a user for the invite/onboarding process.
    class InviteDataModel

        # Initialize the InviteDataModel using the provided prototype
        def initialize(params = {})
            @email = params.dig(:email)
            @user_status = params.dig(:user_status)
        end

        # @return [String] The email address of the invited user.
        attr_accessor :email
        # @return [String] The status of the user.
        attr_accessor :user_status
    end

    def as_json(options={})
        {
            'email' => @email,
            'userStatus' => @user_status,
        }
    end

    def to_json(*options)
        as_json(*options).to_json(*options)
    end
end