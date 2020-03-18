# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_title
  "SELECT projects.title, sum_pledges  FROM (SELECT pledges.project_id, SUM(pledges.amount) AS sum_pledges FROM pledges GROUP BY pledges.project_id) INNER JOIN projects ON projects.id = project_id ORDER BY projects.title"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
  "SELECT users.name, users.age, sum_pledges FROM (SELECT pledges.user_id, SUM(pledges.amount) AS sum_pledges FROM pledges GROUP BY pledges.user_id) INNER JOIN users ON users.id = user_id ORDER BY users.name"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
  "SELECT title, sum_pledges - funding_goal FROM (SELECT projects.title, projects.funding_goal, sum_pledges FROM (SELECT pledges.project_id, SUM(pledges.amount) AS sum_pledges FROM pledges GROUP BY pledges.project_id) INNER JOIN projects ON projects.id = project_id) WHERE sum_pledges >= funding_goal"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_summed_amount
  "SELECT users.name, sum_pledges FROM (SELECT pledges.user_id, SUM(pledges.amount) AS sum_pledges FROM pledges GROUP BY pledges.user_id) INNER JOIN users ON users.id = user_id ORDER BY sum_pledges, users.name"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
  "SELECT category, pledges.amount FROM projects INNER JOIN pledges ON pledges.project_id = projects.id AND projects.category = 'music'"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
  "SELECT category, SUM(amount) FROM projects INNER JOIN pledges ON pledges.project_id = projects.id AND projects.category = 'books'"
end


