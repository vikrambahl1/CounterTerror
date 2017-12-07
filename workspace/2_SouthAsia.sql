.output 2_2016_SouthAsia.json

-- terrorist country -> target
select json_object("source", g.origin_country, "target", a.attack_target, "value", count(a.attack_id))
from detailed_terror_attack as a
left outer join terror_group as g
on a.group_name = g.group_name
where year=2016 
    and a.group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2016 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and a.attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2016 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    )
group by g.origin_country, a.attack_target;

-- target -> type
select json_object("source", attack_target, "target", attack_type, "value", count(attack_id))
from detailed_terror_attack
where year=2016 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2016 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2016 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    )
group by attack_target, attack_type;


.output 2_2016_SouthAsia_0.json

select distinct json_object('name', g.origin_country)
from detailed_terror_attack as a
left join terror_group as g
on a.group_name = g.group_name
where year=2016 
    and a.group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2016 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2016 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );

.output 2_2016_SouthAsia_1.json

select distinct json_object('name', attack_target) 
from detailed_terror_attack
where year=2016 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2016 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2016 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );

.output 2_2016_SouthAsia_2.json

select distinct json_object('name', attack_type) 
from detailed_terror_attack
where year=2016 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2016 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2016 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );

.output 2_2015_SouthAsia.json

-- terrorist country -> target
select json_object("source", g.origin_country, "target", a.attack_target, "value", count(a.attack_id))
from detailed_terror_attack as a
left outer join terror_group as g
on a.group_name = g.group_name
where year=2015 
    and a.group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2015 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and a.attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2015 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    )
group by g.origin_country, a.attack_target;

-- target -> type
select json_object("source", attack_target, "target", attack_type, "value", count(attack_id))
from detailed_terror_attack
where year=2015 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2015 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2015 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    )
group by attack_target, attack_type;


.output 2_2015_SouthAsia_0.json

select distinct json_object('name', g.origin_country)
from detailed_terror_attack as a
left join terror_group as g
on a.group_name = g.group_name
where year=2015 
    and a.group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2015 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2015 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );

.output 2_2015_SouthAsia_1.json

select distinct json_object('name', attack_target) 
from detailed_terror_attack
where year=2015 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2015 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2015 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );

.output 2_2015_SouthAsia_2.json

select distinct json_object('name', attack_type) 
from detailed_terror_attack
where year=2015 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2015 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2015 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );

.output 2_2014_SouthAsia.json

-- terrorist country -> target
select json_object("source", g.origin_country, "target", a.attack_target, "value", count(a.attack_id))
from detailed_terror_attack as a
left outer join terror_group as g
on a.group_name = g.group_name
where year=2014 
    and a.group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2014 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and a.attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2014 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    )
group by g.origin_country, a.attack_target;

-- target -> type
select json_object("source", attack_target, "target", attack_type, "value", count(attack_id))
from detailed_terror_attack
where year=2014 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2014 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2014 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    )
group by attack_target, attack_type;


.output 2_2014_SouthAsia_0.json

select distinct json_object('name', g.origin_country)
from detailed_terror_attack as a
left join terror_group as g
on a.group_name = g.group_name
where year=2014 
    and a.group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2014 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2014 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );

.output 2_2014_SouthAsia_1.json

select distinct json_object('name', attack_target) 
from detailed_terror_attack
where year=2014 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2014 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2014 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );

.output 2_2014_SouthAsia_2.json

select distinct json_object('name', attack_type) 
from detailed_terror_attack
where year=2014 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2014 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2014 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );

.output 2_2013_SouthAsia.json

-- terrorist country -> target
select json_object("source", g.origin_country, "target", a.attack_target, "value", count(a.attack_id))
from detailed_terror_attack as a
left outer join terror_group as g
on a.group_name = g.group_name
where year=2013 
    and a.group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2013 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and a.attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2013 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    )
group by g.origin_country, a.attack_target;

-- target -> type
select json_object("source", attack_target, "target", attack_type, "value", count(attack_id))
from detailed_terror_attack
where year=2013 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2013 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2013 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    )
group by attack_target, attack_type;


.output 2_2013_SouthAsia_0.json

select distinct json_object('name', g.origin_country)
from detailed_terror_attack as a
left join terror_group as g
on a.group_name = g.group_name
where year=2013 
    and a.group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2013 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2013 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );

.output 2_2013_SouthAsia_1.json

select distinct json_object('name', attack_target) 
from detailed_terror_attack
where year=2013 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2013 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2013 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );

.output 2_2013_SouthAsia_2.json

select distinct json_object('name', attack_type) 
from detailed_terror_attack
where year=2013 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2013 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2013 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );

.output 2_2012_SouthAsia.json

-- terrorist country -> target
select json_object("source", g.origin_country, "target", a.attack_target, "value", count(a.attack_id))
from detailed_terror_attack as a
left outer join terror_group as g
on a.group_name = g.group_name
where year=2012 
    and a.group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2012 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and a.attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2012 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    )
group by g.origin_country, a.attack_target;

-- target -> type
select json_object("source", attack_target, "target", attack_type, "value", count(attack_id))
from detailed_terror_attack
where year=2012 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2012 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2012 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    )
group by attack_target, attack_type;


.output 2_2012_SouthAsia_0.json

select distinct json_object('name', g.origin_country)
from detailed_terror_attack as a
left join terror_group as g
on a.group_name = g.group_name
where year=2012 
    and a.group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2012 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2012 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );

.output 2_2012_SouthAsia_1.json

select distinct json_object('name', attack_target) 
from detailed_terror_attack
where year=2012 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2012 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2012 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );

.output 2_2012_SouthAsia_2.json

select distinct json_object('name', attack_type) 
from detailed_terror_attack
where year=2012 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2012 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2012 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );

.output 2_2011_SouthAsia.json

-- terrorist country -> target
select json_object("source", g.origin_country, "target", a.attack_target, "value", count(a.attack_id))
from detailed_terror_attack as a
left outer join terror_group as g
on a.group_name = g.group_name
where year=2011 
    and a.group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2011 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and a.attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2011 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    )
group by g.origin_country, a.attack_target;

-- target -> type
select json_object("source", attack_target, "target", attack_type, "value", count(attack_id))
from detailed_terror_attack
where year=2011 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2011 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2011 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    )
group by attack_target, attack_type;


.output 2_2011_SouthAsia_0.json

select distinct json_object('name', g.origin_country)
from detailed_terror_attack as a
left join terror_group as g
on a.group_name = g.group_name
where year=2011 
    and a.group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2011 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2011 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );

.output 2_2011_SouthAsia_1.json

select distinct json_object('name', attack_target) 
from detailed_terror_attack
where year=2011 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2011 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2011 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );

.output 2_2011_SouthAsia_2.json

select distinct json_object('name', attack_type) 
from detailed_terror_attack
where year=2011 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2011 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2011 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );


.output 2_2010_SouthAsia.json

-- terrorist country -> target
select json_object("source", g.origin_country, "target", a.attack_target, "value", count(a.attack_id))
from detailed_terror_attack as a
left outer join terror_group as g
on a.group_name = g.group_name
where year=2010 
    and a.group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2010 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and a.attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2010 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    )
group by g.origin_country, a.attack_target;

-- target -> type
select json_object("source", attack_target, "target", attack_type, "value", count(attack_id))
from detailed_terror_attack
where year=2010 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2010 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2010 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    )
group by attack_target, attack_type;


.output 2_2010_SouthAsia_0.json

select distinct json_object('name', g.origin_country)
from detailed_terror_attack as a
left join terror_group as g
on a.group_name = g.group_name
where year=2010 
    and a.group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2010 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2010 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );

.output 2_2010_SouthAsia_1.json

select distinct json_object('name', attack_target) 
from detailed_terror_attack
where year=2010 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2010 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2010 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );

.output 2_2010_SouthAsia_2.json

select distinct json_object('name', attack_type) 
from detailed_terror_attack
where year=2010 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2010 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2010 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );

.output 2_2009_SouthAsia.json

-- terrorist country -> target
select json_object("source", g.origin_country, "target", a.attack_target, "value", count(a.attack_id))
from detailed_terror_attack as a
left outer join terror_group as g
on a.group_name = g.group_name
where year=2009 
    and a.group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2009 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and a.attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2009 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    )
group by g.origin_country, a.attack_target;

-- target -> type
select json_object("source", attack_target, "target", attack_type, "value", count(attack_id))
from detailed_terror_attack
where year=2009 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2009 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2009 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    )
group by attack_target, attack_type;


.output 2_2009_SouthAsia_0.json

select distinct json_object('name', g.origin_country)
from detailed_terror_attack as a
left join terror_group as g
on a.group_name = g.group_name
where year=2009 
    and a.group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2009 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2009 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );

.output 2_2009_SouthAsia_1.json

select distinct json_object('name', attack_target) 
from detailed_terror_attack
where year=2009 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2009 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2009 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );

.output 2_2009_SouthAsia_2.json

select distinct json_object('name', attack_type) 
from detailed_terror_attack
where year=2009 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2009 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2009 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );

.output 2_2008_SouthAsia.json

-- terrorist country -> target
select json_object("source", g.origin_country, "target", a.attack_target, "value", count(a.attack_id))
from detailed_terror_attack as a
left outer join terror_group as g
on a.group_name = g.group_name
where year=2008 
    and a.group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2008 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and a.attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2008 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    )
group by g.origin_country, a.attack_target;

-- target -> type
select json_object("source", attack_target, "target", attack_type, "value", count(attack_id))
from detailed_terror_attack
where year=2008 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2008 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2008 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    )
group by attack_target, attack_type;


.output 2_2008_SouthAsia_0.json

select distinct json_object('name', g.origin_country)
from detailed_terror_attack as a
left join terror_group as g
on a.group_name = g.group_name
where year=2008 
    and a.group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2008 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2008 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );

.output 2_2008_SouthAsia_1.json

select distinct json_object('name', attack_target) 
from detailed_terror_attack
where year=2008 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2008 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2008 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );

.output 2_2008_SouthAsia_2.json

select distinct json_object('name', attack_type) 
from detailed_terror_attack
where year=2008 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2008 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2008 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );

.output 2_2007_SouthAsia.json

-- terrorist country -> target
select json_object("source", g.origin_country, "target", a.attack_target, "value", count(a.attack_id))
from detailed_terror_attack as a
left outer join terror_group as g
on a.group_name = g.group_name
where year=2007 
    and a.group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2007 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and a.attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2007 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    )
group by g.origin_country, a.attack_target;

-- target -> type
select json_object("source", attack_target, "target", attack_type, "value", count(attack_id))
from detailed_terror_attack
where year=2007 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2007 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2007 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    )
group by attack_target, attack_type;


.output 2_2007_SouthAsia_0.json

select distinct json_object('name', g.origin_country)
from detailed_terror_attack as a
left join terror_group as g
on a.group_name = g.group_name
where year=2007 
    and a.group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2007 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2007 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );

.output 2_2007_SouthAsia_1.json

select distinct json_object('name', attack_target) 
from detailed_terror_attack
where year=2007 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2007 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2007 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );

.output 2_2007_SouthAsia_2.json

select distinct json_object('name', attack_type) 
from detailed_terror_attack
where year=2007 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2007 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2007 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );

.output 2_2006_SouthAsia.json

-- terrorist country -> target
select json_object("source", g.origin_country, "target", a.attack_target, "value", count(a.attack_id))
from detailed_terror_attack as a
left outer join terror_group as g
on a.group_name = g.group_name
where year=2006 
    and a.group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2006 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and a.attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2006 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    )
group by g.origin_country, a.attack_target;

-- target -> type
select json_object("source", attack_target, "target", attack_type, "value", count(attack_id))
from detailed_terror_attack
where year=2006 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2006 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2006 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    )
group by attack_target, attack_type;


.output 2_2006_SouthAsia_0.json

select distinct json_object('name', g.origin_country)
from detailed_terror_attack as a
left join terror_group as g
on a.group_name = g.group_name
where year=2006 
    and a.group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2006 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2006 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );

.output 2_2006_SouthAsia_1.json

select distinct json_object('name', attack_target) 
from detailed_terror_attack
where year=2006 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2006 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2006 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );

.output 2_2006_SouthAsia_2.json

select distinct json_object('name', attack_type) 
from detailed_terror_attack
where year=2006 
    and group_name in (
       select a.group_name
        from detailed_terror_attack a
        left join terror_group g
        on a.group_name = g.group_name
        where a.year=2006 and g.origin_region='South Asia' 
        group by a.group_name
        order by count(g.group_name) desc
        limit 5
    )
    and attack_target in (
       select a.attack_Target
        from detailed_terror_attack a
        left join terror_group g
        where year=2006 and g.origin_region='South Asia'
        group by a.attack_target
        order by count(a.attack_target) desc
        limit 5
    );