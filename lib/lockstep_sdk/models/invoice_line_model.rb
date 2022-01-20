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

    # Represents a line in an invoice
    class InvoiceLineModel

        # Initialize the InvoiceLineModel using the provided prototype
        def initialize(params = {})
            @invoice_line_id = params.dig(:invoice_line_id)
            @group_key = params.dig(:group_key)
            @invoice_id = params.dig(:invoice_id)
            @erp_key = params.dig(:erp_key)
            @line_number = params.dig(:line_number)
            @product_code = params.dig(:product_code)
            @description = params.dig(:description)
            @unit_measure_code = params.dig(:unit_measure_code)
            @unit_price = params.dig(:unit_price)
            @quantity = params.dig(:quantity)
            @quantity_shipped = params.dig(:quantity_shipped)
            @quantity_received = params.dig(:quantity_received)
            @total_amount = params.dig(:total_amount)
            @exemption_code = params.dig(:exemption_code)
            @reporting_date = params.dig(:reporting_date)
            @override_origin_address_id = params.dig(:override_origin_address_id)
            @override_bill_to_address_id = params.dig(:override_bill_to_address_id)
            @override_ship_to_address_id = params.dig(:override_ship_to_address_id)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
            @modified = params.dig(:modified)
            @modified_user_id = params.dig(:modified_user_id)
            @app_enrollment_id = params.dig(:app_enrollment_id)
            @notes = params.dig(:notes)
            @attachments = params.dig(:attachments)
        end

        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        attr_accessor :invoice_line_id
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [Uuid] The ID number of the invoice this line belongs to.
        attr_accessor :invoice_id
        # @return [String] The unique ID of this record as it was known in its originating financial system, if it was different from the original `LineNumber`. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key
        # @return [String] The line number of this line, as defined in the originating ERP or accounting system. You can sort on this number to get the original view of lines within the invoice.
        attr_accessor :line_number
        # @return [String] A code number identifying the product or service that is specified on this line.
        attr_accessor :product_code
        # @return [String] Description of this invoice line.
        attr_accessor :description
        # @return [String] For lines measured in a unit other than "quantity", this code indicates the measurement system for the quantity field. If the line is measured in quantity, this field is null.
        attr_accessor :unit_measure_code
        # @return [Double] The price of a single unit for this line.
        attr_accessor :unit_price
        # @return [Double] The quantity of items for ths line.
        attr_accessor :quantity
        # @return [Double] The number of items that have been shipped.
        attr_accessor :quantity_shipped
        # @return [Double] The number of items that has been received.
        attr_accessor :quantity_received
        # @return [Double] The total amount for this line.
        attr_accessor :total_amount
        # @return [String] If this line is tax exempt, this code indicates the reason for the exemption.
        attr_accessor :exemption_code
        # @return [Date] If null, the products specified on this line were delivered on the same date as all other lines. If not null, this line was delivered or finalized on a different date than the overall invoice.
        attr_accessor :reporting_date
        # @return [Uuid] An optional ID number for the line's origin address.
        attr_accessor :override_origin_address_id
        # @return [Uuid] An optional ID number for the line's bill to address.
        attr_accessor :override_bill_to_address_id
        # @return [Uuid] An optional ID number for the line's ship to address.
        attr_accessor :override_ship_to_address_id
        # @return [Date-time] The date on which this line was created.
        attr_accessor :created
        # @return [Uuid] The ID number of the user who created this line.
        attr_accessor :created_user_id
        # @return [Date-time] The date on which this line was last modified.
        attr_accessor :modified
        # @return [Uuid] The ID number of the user who most recently modified this line.
        attr_accessor :modified_user_id
        # @return [Uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :app_enrollment_id
        # @return [NoteModel] All notes attached to this company. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes
        # @return [AttachmentModel] All attachments attached to this company. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments
    end

    def as_json(options={})
        {
            'invoiceLineId' => @invoice_line_id,
            'groupKey' => @group_key,
            'invoiceId' => @invoice_id,
            'erpKey' => @erp_key,
            'lineNumber' => @line_number,
            'productCode' => @product_code,
            'description' => @description,
            'unitMeasureCode' => @unit_measure_code,
            'unitPrice' => @unit_price,
            'quantity' => @quantity,
            'quantityShipped' => @quantity_shipped,
            'quantityReceived' => @quantity_received,
            'totalAmount' => @total_amount,
            'exemptionCode' => @exemption_code,
            'reportingDate' => @reporting_date,
            'overrideOriginAddressId' => @override_origin_address_id,
            'overrideBillToAddressId' => @override_bill_to_address_id,
            'overrideShipToAddressId' => @override_ship_to_address_id,
            'created' => @created,
            'createdUserId' => @created_user_id,
            'modified' => @modified,
            'modifiedUserId' => @modified_user_id,
            'appEnrollmentId' => @app_enrollment_id,
            'notes' => @notes,
            'attachments' => @attachments,
        }
    end

    def to_json(*options)
        as_json(*options).to_json(*options)
    end
end