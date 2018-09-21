# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.GroupUsers do
  @moduledoc """
  Groups users
  """

  @derive [Poison.Encoder]
  defstruct [
    :endPosition,
    :nextUri,
    :previousUri,
    :resultSetSize,
    :startPosition,
    :totalSetSize,
    :users
  ]

  @type t :: %__MODULE__{
          :endPosition => String.t(),
          :nextUri => String.t(),
          :previousUri => String.t(),
          :resultSetSize => String.t(),
          :startPosition => String.t(),
          :totalSetSize => String.t(),
          :users => [UserInfo]
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.GroupUsers do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:users, :list, DocuSign.Model.UserInfo, options)
  end
end
