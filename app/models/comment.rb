class Comment < ApplicationRecord
  belongs_to :article ##, class_name:'Comment'## #singular since 1 lang pwede mag own sa kanya, 1 article, multiple comments #automatic na, pagnatkita ni rails yung article i mamap na niya. Yung na set na article, since yun yung nilagay natin an model, convention ni rails yun hahanapin niya. To break that possible na ibahin name, pero tatawagin mo yung class. See comment

end