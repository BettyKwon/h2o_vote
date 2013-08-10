#encoding: UTF-8
class VoteController < ApplicationController

  def index
  end

  def vote_process #새 글을 쓰는 액션(함수)입니다.
    voter = Voter.new #새 글을 하나 new 메소드로 만들고, post라는 변수에 저장합시다.

    voter.president = params[:president][:support]
    voter.vice_president = params[:vice_president][:support]
		voter.save
    render :text => "투표가 완료되었습니다. 감사합니다 :)"
     
  end
end


    #post.username, post.content에서 username, content는 db/migrate에 Post 모델에 정의했습니다.
    #voter.user_number = params[:user_number_from_view] #params로 받은 정보를 각자 맞춰서 잘 저장하고
    #voter.results = params[:results]
