class Question < ActiveRecord::Base
  has_and_belongs_to_many :questionnaires
  has_many :responses

  def options
    (read_attribute(:options) || "").split "|"
  end

  def options=(options)
    opts = []
    if(options)
      options.each do |k, v|
        opts.push(v)
      end
    end
    write_attribute :options, opts.join("|")
  end
 

end
