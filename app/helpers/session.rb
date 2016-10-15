def current_user
  User.find_by(id: session[:user_id])
end

def logged_in?
  !!current_user
end

def total_votes(voteable)
  voteable.votes.reduce(0) { |total, vote| total += vote.vote_value }
end
