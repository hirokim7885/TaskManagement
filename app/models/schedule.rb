class Schedule < ApplicationRecord

  enum name: { memo: 0, usually: 1, early: 2 }

end
