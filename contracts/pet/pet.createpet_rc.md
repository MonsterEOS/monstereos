# CONTRACT FOR pet::createpet

## ACTION NAME: createpet

### Parameters
Input parameters:

* `owner` (person initiating creation)
* `pet_name` (name of monster)

### Intent
INTENT. The intent of the `{{ createpet }}` action is to create a new digital asset with a determined monster type (at the discretion of this monster shop) and transfer ownership to {{ owner }}.
The created monster has to sleep for 4 hours after creation. The {{ owner }} can only create maximum one monster every hour.

As an authorized party I {{ signer }} wish to have {{ owner }} owning the newly created monster. Furthermore, I attest under penalty of perjury that {{ owner }} is not afraid of keeping a monster as her pet.

The state of the monster will change over time based on the interaction with the new asset. If the monster is not cared of according to the general rules of monster keeping the monster might die.

### Term
TERM. This Contract expires 4 hours after code execution.