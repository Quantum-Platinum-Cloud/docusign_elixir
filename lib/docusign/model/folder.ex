# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.Folder do
  @moduledoc false

  @derive [Poison.Encoder]
  defstruct [
    :errorDetails,
    :filter,
    :folderId,
    :folders,
    :name,
    :ownerEmail,
    :ownerUserId,
    :ownerUserName,
    :parentFolderId,
    :parentFolderUri,
    :type,
    :uri
  ]

  @type t :: %__MODULE__{
          :errorDetails => ErrorDetails,
          :filter => Filter,
          :folderId => String.t(),
          :folders => [Folder],
          :name => String.t(),
          :ownerEmail => String.t(),
          :ownerUserId => String.t(),
          :ownerUserName => String.t(),
          :parentFolderId => String.t(),
          :parentFolderUri => String.t(),
          :type => String.t(),
          :uri => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.Folder do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:errorDetails, :struct, DocuSign.Model.ErrorDetails, options)
    |> deserialize(:filter, :struct, DocuSign.Model.Filter, options)
    |> deserialize(:folders, :list, DocuSign.Model.Folder, options)
  end
end
