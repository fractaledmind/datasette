class ApplicationController < ActionController::Base
  private

  def filter(relation)
    return relation unless filter_params.any?

    relation.where(filter_params)
  end

  def sort(relation)
    relation.order(sort_instructions)
  end

  def sort_instructions
    if sort_params.key?(:attribute) && sort_params.key?(:direction)
      { sort_params[:attribute] => sort_params[:direction] }
    else
      sort_params.transform_values { |v| v.remove('ending') }
    end
  end

  def filter_params
    params.fetch(:filter, {}).to_unsafe_hash
  end

  def sort_params
    params.fetch(:sort, { id: 'ascending' }).to_unsafe_hash
  end
  helper_method :sort_params
end
