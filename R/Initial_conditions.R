N = 1000
max_age = 100
initial_worms = 10
time_step = 10
worm_stages = as.integer(2)
female_factor = 1
male_factor = 1
initial_miracidia = 1
initial_miracidia_days = round(41/time_step)
env_cercariae = 0
ages_per_index = 5

# parameter for proportion of people who are given mda who will take it
mda_adherence = .9
mda_access = .9

# how long to run simulation for
number_years = 250
max_fecundity = 0.34  # From "The design of schistosomiasis monitoring and evaluation programmes:
#The importance of collecting adu lt data to inform treatment strategies for Schistosoma mansoni"
density_dependent_fecundity = 0.0005
r = 0.03 # aggregation parameter for negative binomial for egg production
num_time_steps = as.integer(365*number_years / time_step)

# human birth rate
birth_rate = 28*time_step/(1000*365)

average_worm_lifespan = 5.7 # years

# this is the aggregation parameter for the predisposition
predis_aggregation = 0.24
predis_weight = 1
env_cercariae_death_rate = 0.09 * time_step 
  
# what proportion of miracidias and cercariae survive each round
env_miracidia_survival_prop = 1/3
env_cercariae_survival_prop = 1/2
mda_coverage = 0.8 # proportion of target age group reached by mda
mda_round = 0

# proportion of cercariae which can infect humans
human_cercariae_prop = 1

# gamma distribution for Kato-Katz method

# gamma_k = Gamma(0.87,1/0.87)

vaccine_effectiveness = 0.95
num_sims = 1

# record the state of the population this often in years
record_frequency = 1/24

#= this is the number of thousands of people in 5 year (0-4, 5-9,...) intervals in Kenya
#and will be used to give a specified age structure when we run to equilibrium =#
spec_ages = c(7639, 7082, 6524, 5674, 4725, 4147, 3928, 3362,
              2636, 1970, 1468, 1166, 943, 718, 455, 244)

#= number of deaths per 1000 individuals by age
#first entry is for under 1's, then for 5 year intervals from then on =#
age_death_rate_per_1000 = c(6.56, 0.93, 0.3, 0.23, 0.27, 0.38, 0.44, 0.48,0.53, 0.65,
                            0.88, 1.06, 1.44, 2.1, 3.33, 5.29, 8.51, 13.66,
                            21.83, 29.98, 36.98)

death_prob_by_age = c(0.0656, 0.0093, 0.003, 0.0023, 0.0027, 0.0038, 0.0044, 0.0048, 0.0053,
                     0.0065, 0.0088, 0.0106, 0.0144, 0.021, 0.0333, 0.0529, 0.0851, 0.1366, 0.2183, 0.2998 , 0.3698, 1)

ages_for_deaths = c(1, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60,
                   65, 70, 75, 80, 85, 90, 95, 100, 110)


filename = "julia_file222.jld"
N = 1000
N = as.integer(N)
worm_stages = as.integer(worm_stages)
scenario = "high adult"


input_ages = array(0,dim=c(0))
input_contact_rates = array(0,dim=c(0))
max_age = 100
max_age = as.integer(max_age)

number_years_equ = 300

num_time_steps_equ = as.integer(365*number_years_equ / time_step)
contact_rate = 0.02
human_cercariae_prop = 1
env_cercariae_survival_prop = 1/2
env_miracidia_survival_prop = 1/2


col1 = rgb(110/255, 99/255, 252/255)
col2 = rgb(30/255, 190/255, 160/255)
col3 = rgb(2/255, 163/255, 217/255)