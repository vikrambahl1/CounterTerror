.output 1_2016_EastAsia.json

-- select target_country, group_name, count(attack_id)
select json_object("source", target_country, "target", group_name, "value", count(attack_id))
from detailed_terror_attack
where year=2016 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2016 and target_region='East Asia' 
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2016 and target_region='East Asia'
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by target_country, group_name;

--terrorist group -> attack target
-- select group_name, attack_target, count(attack_id)
select json_object("source", group_name, "target", attack_target, "value", count(attack_id))
from detailed_terror_attack
where year=2016 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2016 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_target
        from detailed_terror_attack
        where year=2016 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by group_name, attack_target;

--attack target -> attack type
-- select attack_target, attack_type, count(attack_id)
select json_object("source", attack_target, "target", attack_type, "value", count(attack_id))
from detailed_terror_attack
where year=2016 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2016 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2016 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by attack_target, attack_type;

.output 1_2016_EastAsia_0.json

select distinct json_object('name', target_country) 
from detailed_terror_attack
where year=2016 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2016 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
)
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2016 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2016_EastAsia_1.json

select distinct json_object('name', group_name) 
from detailed_terror_attack
where year=2016 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2016 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2016 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2016_EastAsia_2.json

select distinct json_object('name', attack_target) 
from detailed_terror_attack
where year=2016 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2016 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2016 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2016_EastAsia_3.json

select distinct json_object('name', attack_type) 
from detailed_terror_attack
where year=2016 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2016 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2016 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2015_EastAsia.json

-- select target_country, group_name, count(attack_id)
select json_object("source", target_country, "target", group_name, "value", count(attack_id))
from detailed_terror_attack
where year=2015 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2015 and target_region='East Asia' 
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2015 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by target_country, group_name;

--terrorist group -> attack target
-- select group_name, attack_target, count(attack_id)
select json_object("source", group_name, "target", attack_target, "value", count(attack_id))
from detailed_terror_attack
where year=2015 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2015 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2015 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by group_name, attack_target;

--attack target -> attack type
-- select attack_target, attack_type, count(attack_id)
select json_object("source", attack_target, "target", attack_type, "value", count(attack_id))
from detailed_terror_attack
where year=2015 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2015 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2015 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by attack_target, attack_type;

.output 1_2015_EastAsia_0.json

select distinct json_object('name', target_country) 
from detailed_terror_attack
where year=2015 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2015 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
)
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2015 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2015_EastAsia_1.json

select distinct json_object('name', group_name) 
from detailed_terror_attack
where year=2015 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2015 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2015 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2015_EastAsia_2.json

select distinct json_object('name', attack_target) 
from detailed_terror_attack
where year=2015 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2015 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2015 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2015_EastAsia_3.json

select distinct json_object('name', attack_type) 
from detailed_terror_attack
where year=2015 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2015 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2015 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2014_EastAsia.json

-- select target_country, group_name, count(attack_id)
select json_object("source", target_country, "target", group_name, "value", count(attack_id))
from detailed_terror_attack
where year=2014 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2014 and target_region='East Asia' 
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2014 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by target_country, group_name;

--terrorist group -> attack target
-- select group_name, attack_target, count(attack_id)
select json_object("source", group_name, "target", attack_target, "value", count(attack_id))
from detailed_terror_attack
where year=2014 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2014 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2014 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by group_name, attack_target;

--attack target -> attack type
-- select attack_target, attack_type, count(attack_id)
select json_object("source", attack_target, "target", attack_type, "value", count(attack_id))
from detailed_terror_attack
where year=2014 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2014 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2014 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by attack_target, attack_type;

.output 1_2014_EastAsia_0.json

select distinct json_object('name', target_country) 
from detailed_terror_attack
where year=2014 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2014 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
)
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2014 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2014_EastAsia_1.json

select distinct json_object('name', group_name) 
from detailed_terror_attack
where year=2014 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2014 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2014 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2014_EastAsia_2.json

select distinct json_object('name', attack_target) 
from detailed_terror_attack
where year=2014 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2014 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2014 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2014_EastAsia_3.json

select distinct json_object('name', attack_type) 
from detailed_terror_attack
where year=2014 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2014 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2014 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2013_EastAsia.json

-- select target_country, group_name, count(attack_id)
select json_object("source", target_country, "target", group_name, "value", count(attack_id))
from detailed_terror_attack
where year=2013 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2013 and target_region='East Asia' 
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2013 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by target_country, group_name;

--terrorist group -> attack target
-- select group_name, attack_target, count(attack_id)
select json_object("source", group_name, "target", attack_target, "value", count(attack_id))
from detailed_terror_attack
where year=2013 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2013 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2013 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by group_name, attack_target;

--attack target -> attack type
-- select attack_target, attack_type, count(attack_id)
select json_object("source", attack_target, "target", attack_type, "value", count(attack_id))
from detailed_terror_attack
where year=2013 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2013 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2013 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by attack_target, attack_type;

.output 1_2013_EastAsia_0.json

select distinct json_object('name', target_country) 
from detailed_terror_attack
where year=2013 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2013 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
)
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2013 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2013_EastAsia_1.json

select distinct json_object('name', group_name) 
from detailed_terror_attack
where year=2013 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2013 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2013 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2013_EastAsia_2.json

select distinct json_object('name', attack_target) 
from detailed_terror_attack
where year=2013 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2013 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2013 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2013_EastAsia_3.json

select distinct json_object('name', attack_type) 
from detailed_terror_attack
where year=2013 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2013 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2013 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2012_EastAsia.json

-- select target_country, group_name, count(attack_id)
select json_object("source", target_country, "target", group_name, "value", count(attack_id))
from detailed_terror_attack
where year=2012 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2012 and target_region='East Asia' 
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2012 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by target_country, group_name;

--terrorist group -> attack target
-- select group_name, attack_target, count(attack_id)
select json_object("source", group_name, "target", attack_target, "value", count(attack_id))
from detailed_terror_attack
where year=2012 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2012 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2012 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by group_name, attack_target;

--attack target -> attack type
-- select attack_target, attack_type, count(attack_id)
select json_object("source", attack_target, "target", attack_type, "value", count(attack_id))
from detailed_terror_attack
where year=2012 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2012 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2012 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by attack_target, attack_type;

.output 1_2012_EastAsia_0.json

select distinct json_object('name', target_country) 
from detailed_terror_attack
where year=2012 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2012 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
)
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2012 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2012_EastAsia_1.json

select distinct json_object('name', group_name) 
from detailed_terror_attack
where year=2012 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2012 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2012 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2012_EastAsia_2.json

select distinct json_object('name', attack_target) 
from detailed_terror_attack
where year=2012 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2012 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2012 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2012_EastAsia_3.json

select distinct json_object('name', attack_type) 
from detailed_terror_attack
where year=2012 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2012 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2012 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2011_EastAsia.json

-- select target_country, group_name, count(attack_id)
select json_object("source", target_country, "target", group_name, "value", count(attack_id))
from detailed_terror_attack
where year=2011 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2011 and target_region='East Asia' 
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2011 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by target_country, group_name;

--terrorist group -> attack target
-- select group_name, attack_target, count(attack_id)
select json_object("source", group_name, "target", attack_target, "value", count(attack_id))
from detailed_terror_attack
where year=2011 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2011 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2011 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by group_name, attack_target;

--attack target -> attack type
-- select attack_target, attack_type, count(attack_id)
select json_object("source", attack_target, "target", attack_type, "value", count(attack_id))
from detailed_terror_attack
where year=2011 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2011 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2011 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by attack_target, attack_type;

.output 1_2011_EastAsia_0.json

select distinct json_object('name', target_country) 
from detailed_terror_attack
where year=2011 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2011 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
)
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2011 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2011_EastAsia_1.json

select distinct json_object('name', group_name) 
from detailed_terror_attack
where year=2011 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2011 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2011 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2011_EastAsia_2.json

select distinct json_object('name', attack_target) 
from detailed_terror_attack
where year=2011 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2011 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2011 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2011_EastAsia_3.json

select distinct json_object('name', attack_type) 
from detailed_terror_attack
where year=2011 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2011 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2011 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2010_EastAsia.json

-- select target_country, group_name, count(attack_id)
select json_object("source", target_country, "target", group_name, "value", count(attack_id))
from detailed_terror_attack
where year=2010 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2010 and target_region='East Asia' 
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2010 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by target_country, group_name;

--terrorist group -> attack target
-- select group_name, attack_target, count(attack_id)
select json_object("source", group_name, "target", attack_target, "value", count(attack_id))
from detailed_terror_attack
where year=2010 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2010 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2010 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by group_name, attack_target;

--attack target -> attack type
-- select attack_target, attack_type, count(attack_id)
select json_object("source", attack_target, "target", attack_type, "value", count(attack_id))
from detailed_terror_attack
where year=2010 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2010 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2010 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by attack_target, attack_type;

.output 1_2010_EastAsia_0.json

select distinct json_object('name', target_country) 
from detailed_terror_attack
where year=2010 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2010 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
)
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2010 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2010_EastAsia_1.json

select distinct json_object('name', group_name) 
from detailed_terror_attack
where year=2010 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2010 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2010 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2010_EastAsia_2.json

select distinct json_object('name', attack_target) 
from detailed_terror_attack
where year=2010 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2010 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2010 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2010_EastAsia_3.json

select distinct json_object('name', attack_type) 
from detailed_terror_attack
where year=2010 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2010 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2010 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2009_EastAsia.json

-- select target_country, group_name, count(attack_id)
select json_object("source", target_country, "target", group_name, "value", count(attack_id))
from detailed_terror_attack
where year=2009 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2009 and target_region='East Asia' 
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2009 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by target_country, group_name;

--terrorist group -> attack target
-- select group_name, attack_target, count(attack_id)
select json_object("source", group_name, "target", attack_target, "value", count(attack_id))
from detailed_terror_attack
where year=2009 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2009 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2009 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by group_name, attack_target;

--attack target -> attack type
-- select attack_target, attack_type, count(attack_id)
select json_object("source", attack_target, "target", attack_type, "value", count(attack_id))
from detailed_terror_attack
where year=2009 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2009 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2009 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by attack_target, attack_type;

.output 1_2009_EastAsia_0.json

select distinct json_object('name', target_country) 
from detailed_terror_attack
where year=2009 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2009 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
)
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2009 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2009_EastAsia_1.json

select distinct json_object('name', group_name) 
from detailed_terror_attack
where year=2009 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2009 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2009 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2009_EastAsia_2.json

select distinct json_object('name', attack_target) 
from detailed_terror_attack
where year=2009 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2009 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2009 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2009_EastAsia_3.json

select distinct json_object('name', attack_type) 
from detailed_terror_attack
where year=2009 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2009 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2009 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2008_EastAsia.json

-- select target_country, group_name, count(attack_id)
select json_object("source", target_country, "target", group_name, "value", count(attack_id))
from detailed_terror_attack
where year=2008 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2008 and target_region='East Asia' 
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2008 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by target_country, group_name;

--terrorist group -> attack target
-- select group_name, attack_target, count(attack_id)
select json_object("source", group_name, "target", attack_target, "value", count(attack_id))
from detailed_terror_attack
where year=2008 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2008 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2008 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by group_name, attack_target;

--attack target -> attack type
-- select attack_target, attack_type, count(attack_id)
select json_object("source", attack_target, "target", attack_type, "value", count(attack_id))
from detailed_terror_attack
where year=2008 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2008 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2008 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by attack_target, attack_type;

.output 1_2008_EastAsia_0.json

select distinct json_object('name', target_country) 
from detailed_terror_attack
where year=2008 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2008 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
)
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2008 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2008_EastAsia_1.json

select distinct json_object('name', group_name) 
from detailed_terror_attack
where year=2008 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2008 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2008 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2008_EastAsia_2.json

select distinct json_object('name', attack_target) 
from detailed_terror_attack
where year=2008 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2008 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2008 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2008_EastAsia_3.json

select distinct json_object('name', attack_type) 
from detailed_terror_attack
where year=2008 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2008 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2008 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2007_EastAsia.json

-- select target_country, group_name, count(attack_id)
select json_object("source", target_country, "target", group_name, "value", count(attack_id))
from detailed_terror_attack
where year=2007 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2007 and target_region='East Asia' 
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2007 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by target_country, group_name;

--terrorist group -> attack target
-- select group_name, attack_target, count(attack_id)
select json_object("source", group_name, "target", attack_target, "value", count(attack_id))
from detailed_terror_attack
where year=2007 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2007 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2007 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by group_name, attack_target;

--attack target -> attack type
-- select attack_target, attack_type, count(attack_id)
select json_object("source", attack_target, "target", attack_type, "value", count(attack_id))
from detailed_terror_attack
where year=2007 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2007 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2007 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by attack_target, attack_type;

.output 1_2007_EastAsia_0.json

select distinct json_object('name', target_country) 
from detailed_terror_attack
where year=2007 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2007 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
)
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2007 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2007_EastAsia_1.json

select distinct json_object('name', group_name) 
from detailed_terror_attack
where year=2007 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2007 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2007 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2007_EastAsia_2.json

select distinct json_object('name', attack_target) 
from detailed_terror_attack
where year=2007 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2007 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2007 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2007_EastAsia_3.json

select distinct json_object('name', attack_type) 
from detailed_terror_attack
where year=2007 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2007 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2007 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2006_EastAsia.json

-- select target_country, group_name, count(attack_id)
select json_object("source", target_country, "target", group_name, "value", count(attack_id))
from detailed_terror_attack
where year=2006 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2006 and target_region='East Asia' 
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2006 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by target_country, group_name;

--terrorist group -> attack target
-- select group_name, attack_target, count(attack_id)
select json_object("source", group_name, "target", attack_target, "value", count(attack_id))
from detailed_terror_attack
where year=2006 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2006 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2006 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by group_name, attack_target;

--attack target -> attack type
-- select attack_target, attack_type, count(attack_id)
select json_object("source", attack_target, "target", attack_type, "value", count(attack_id))
from detailed_terror_attack
where year=2006 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2006 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2006 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    )
group by attack_target, attack_type;

.output 1_2006_EastAsia_0.json

select distinct json_object('name', target_country) 
from detailed_terror_attack
where year=2006 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2006 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
)
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2006 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2006_EastAsia_1.json

select distinct json_object('name', group_name) 
from detailed_terror_attack
where year=2006 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2006 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2006 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2006_EastAsia_2.json

select distinct json_object('name', attack_target) 
from detailed_terror_attack
where year=2006 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2006 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2006 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );

.output 1_2006_EastAsia_3.json

select distinct json_object('name', attack_type) 
from detailed_terror_attack
where year=2006 and target_region='East Asia'
    and group_name in (
       select group_name
        from detailed_terror_attack
        where year=2006 and target_region='East Asia'
        group by group_name
        order by count(group_name) desc
        limit 5
    )
    and attack_target in (
       select attack_Target
        from detailed_terror_attack
        where year=2006 and target_region='East Asia' 
        group by attack_target
        order by count(attack_target) desc
        limit 5 
    );
