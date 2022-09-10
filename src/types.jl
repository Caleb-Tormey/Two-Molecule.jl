# Types

export
    PairwiseInteraction,
    BondedInteraction,
    InteractionArray1Site,
    InteractionArray2Site,
    InteractionArray3Site,
    InteractionArray4Site,
    Site

const DefaultFloat = Float64
"""
This type of pairwise interaction will apply to all sites (LJ, Coulomb etc.) 
"""
abstract type PairwiseInteraction end
"""
This is a specific type of bonded potential (dihedral, bond angle, bond lenght etc.)
"""
abstract type BondedInteraction end
""" 
    InteractionArray1Site(is,types,inters)
    InteractionArray1Site(inter_type)
"""
struct InteractionArray1Site(T)
    is::Vector(int)
    types::Vector(String)
    inters::T
