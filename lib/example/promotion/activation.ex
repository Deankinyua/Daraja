defmodule Example.Activation do
  use Ash.Domain

  domain do
    description """
    Resources related to the Daraja Application.
    """
  end

  resources do
    resource Example.Activation.Promoter do
      # Define an interface for calling resource actions.
      define :create_promoter, action: :create
      define :list_promoters, action: :read
      define :update_promoter, action: :update
      define :destroy_promoter, action: :destroy
      define :get_promoter, args: [:id], action: :by_id
    end
  end
end
