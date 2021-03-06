module Fog
  module Compute
    class Brightbox
      class Real
        # Destroy the firewall policy if not in use.
        #
        # @param [String] identifier Unique reference to identify the resource
        #
        # @return [Hash] The JSON response parsed to a Hash
        #
        # @see https://api.gb1.brightbox.com/1.0/#firewall_policy_destroy_firewall_policy
        #
        def destroy_firewall_policy(identifier)
          return nil if identifier.nil? || identifier == ""
          wrapped_request("delete", "/1.0/firewall_policies/#{identifier}", [202])
        end

      end
    end
  end
end
