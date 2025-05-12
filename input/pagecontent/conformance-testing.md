### Conformance Testing

Conformance testing verifies that an implementation conforms to the standards and profiles defined in this IG [7].

#### Resource Validation

Resource validation tests verify that resources conform to the profiles defined in this IG:

1. **Profile Validation**: Validate resources against their profiles, including:
   - **Structure validation** - Verification that resources follow the structural constraints defined in profiles, including required elements, cardinality rules, and data type specifications, ensuring that resources are structurally correct and can be processed by FHIR systems.
   - **Cardinality validation** - Confirmation that elements appear the correct number of times as specified in profiles (e.g., required elements are present, elements do not exceed maximum occurrences), ensuring that resources contain the appropriate amount of information.
   - **Value set validation** - Verification that coded elements use values from the specified value sets, ensuring semantic interoperability through consistent terminology usage across implementations.
   - **Invariant validation** - Checking that resources satisfy all conditional constraints defined in profiles, ensuring that interdependent elements maintain logical consistency and business rule compliance.
   - **Extension validation** - Verification that extensions are used correctly according to their definitions, ensuring that implementation-specific extensions conform to their intended structure and usage patterns.

2. **Validation Tools**: Use FHIR validation tools, including:
   - **FHIR Validator** - The official HL7 FHIR validation tool that checks resources against profiles, value sets, and invariants, providing detailed validation reports that identify conformance issues [8].
   - **IG Publisher** - The tool used to publish Implementation Guides, which includes validation capabilities to ensure that example resources conform to the profiles defined in the IG.
   - **Validation servers** - Online services that provide validation capabilities, allowing resources to be validated without installing local tools, supporting both interactive validation and API-based validation for integration into automated testing pipelines.
   - **Custom validation tools** - Purpose-built tools that implement validation logic specific to Medicaid provider directory requirements, addressing validation needs not covered by standard tools.
   - **Validation libraries** - Programming libraries that can be integrated into applications to perform validation during development, testing, or production, enabling validation to be embedded directly into the implementation.

3. **Validation Scenarios**: Test validation with various scenarios, including:
   - **Valid resources** - Resources that should pass validation, confirming that correctly formatted resources are accepted by the validation process.
   - **Invalid resources** - Resources that should fail validation, confirming that validation correctly identifies and reports conformance issues.
   - **Boundary cases** - Resources that test the limits of what is allowed by profiles, such as minimum/maximum values or string lengths, ensuring that validation enforces these constraints correctly.
   - **Edge cases** - Resources that test unusual but valid combinations of elements, ensuring that validation handles complex scenarios correctly.
   - **Real-world examples** - Resources derived from actual production data, ensuring that validation works with the types of data that will be encountered in real use.

4. **Validation Reporting**: Generate validation reports, including:
   - **Validation errors** - Clear descriptions of validation failures that prevent resources from conforming to profiles, including the specific elements and constraints that were violated.
   - **Validation warnings** - Notifications about potential issues that don't prevent conformance but may indicate problems, such as deprecated elements or patterns that may cause interoperability issues.
   - **Validation information** - Additional context about the validation process, such as which profiles and value sets were used, helping to interpret validation results correctly.
   - **Validation statistics** - Aggregate metrics about validation results, such as error rates by resource type or profile, identifying patterns in validation issues.
   - **Validation trends** - Changes in validation results over time, helping to track progress in addressing conformance issues and identify regressions.

5. **Validation Remediation**: Address validation issues, including:
   - **Error correction** - Fixing resources or implementation code to address validation errors, ensuring that resources conform to profiles.
   - **Warning resolution** - Addressing validation warnings to improve resource quality and interoperability, even when warnings don't prevent technical conformance.
   - **Profile updates** - Modifying profiles when validation issues indicate problems with the profiles themselves rather than the resources, ensuring that profiles accurately reflect requirements.
   - **Implementation updates** - Modifying the implementation to generate valid resources, addressing systematic issues in resource creation or modification.
   - **Documentation updates** - Improving documentation to clarify requirements and prevent future validation issues, ensuring that implementers understand how to create valid resources.

#### Search Parameter Testing

Search parameter tests verify that search parameters function correctly [9]:

1. **Parameter Support**: Test support for required search parameters, including:
   - **Resource-specific parameters** - Search parameters defined for specific resource types, such as name for Practitioner or address for Location, ensuring that implementations support the parameters most relevant to each resource type.
   - **Common parameters** - Search parameters that apply to all resource types, such as _id, _lastUpdated, and _tag, ensuring that implementations support these fundamental search capabilities.
   - **Composite parameters** - Search parameters that combine multiple elements, such as name-use or address-state-name, ensuring that implementations support more complex search criteria.
   - **Chained parameters** - Search parameters that traverse references between resources, such as organization.name or location.address-city, ensuring that implementations support relationship-based searches.
   - **Reverse chained parameters** - Search parameters that find resources referenced by other resources, such as _has:Practitioner:organization:name, ensuring that implementations support bidirectional relationship searches.

2. **Parameter Behavior**: Test parameter behavior, including:
   - **Exact matching** - Verification that searches for exact values return only resources with those exact values, ensuring precise search capabilities.
   - **Partial matching** - Verification that searches for partial values (e.g., using :contains or :exact modifiers) behave as expected, supporting flexible search capabilities.
   - **Token matching** - Verification that searches for coded values work correctly, including system|code syntax and searching by code only, ensuring that terminology-based searches function properly.
   - **Date matching** - Verification that searches for dates work correctly, including date ranges, relative dates, and precision modifiers, supporting temporal search capabilities.
   - **Quantity matching** - Verification that searches for quantities work correctly, including units and comparison operators, supporting numeric search capabilities.

3. **Parameter Combinations**: Test parameter combinations, including:
   - **Multiple parameters** - Searches that combine multiple parameters, ensuring that implementations correctly apply logical AND semantics between parameters.
   - **AND combinations** - Searches that combine multiple values for the same parameter with AND semantics, ensuring that implementations support finding resources that match all specified values.
   - **OR combinations** - Searches that combine multiple values for the same parameter with OR semantics, ensuring that implementations support finding resources that match any specified value.
   - **NOT modifiers** - Searches that use the :not modifier to exclude resources with specific values, ensuring that implementations support exclusion criteria.
   - **Modifiers** - Searches that use other modifiers such as :exact, :contains, or :missing, ensuring that implementations support modified search behavior.

4. **Parameter Edge Cases**: Test parameter edge cases, including:
   - **Empty values** - Searches with empty parameter values, ensuring that implementations handle these correctly (typically by ignoring the parameter).
   - **Special characters** - Searches with special characters in parameter values, ensuring that implementations handle escaping and encoding correctly.
   - **Long values** - Searches with very long parameter values, ensuring that implementations don't truncate or reject these values inappropriately.
   - **Invalid values** - Searches with syntactically invalid parameter values, ensuring that implementations return appropriate errors rather than incorrect results.
   - **Unsupported parameters** - Searches with parameters not supported by the implementation, ensuring that implementations return appropriate errors rather than ignoring these parameters silently.

5. **Parameter Performance**: Test parameter performance, including:
   - **Response time** - Measurement of how quickly searches return results, ensuring that implementations provide acceptable performance for different types of searches.
   - **Result accuracy** - Verification that search results include all resources that should match the criteria and exclude all resources that shouldn't, ensuring that implementations return correct results.
   - **Result completeness** - Verification that search results include all relevant information, such as included resources requested with _include parameters, ensuring that implementations return comprehensive results.
   - **Result ordering** - Verification that search results are ordered correctly when sort parameters are specified, ensuring that implementations support result ordering capabilities.
   - **Result paging** - Verification that search results are paged correctly when using _count, page, or bundle navigation links, ensuring that implementations support efficient retrieval of large result sets.

#### Operation Testing

Operation tests verify that operations function correctly [10]:

1. **Standard Operations**: Test standard FHIR operations, including:
   - **read** - Verification that implementations can retrieve a specific resource by its logical ID, ensuring basic resource retrieval capabilities.
   - **vread** - Verification that implementations can retrieve a specific version of a resource, ensuring version-aware resource retrieval capabilities.
   - **update** - Verification that implementations can modify existing resources, ensuring resource modification capabilities.
   - **patch** - Verification that implementations can apply partial updates to resources, ensuring efficient resource modification capabilities.
   - **delete** - Verification that implementations can remove resources, ensuring resource lifecycle management capabilities.
   - **history** - Verification that implementations can retrieve the version history of resources, ensuring audit and tracking capabilities.
   - **search** - Verification that implementations can find resources matching specified criteria, ensuring resource discovery capabilities.
   - **create** - Verification that implementations can add new resources, ensuring resource creation capabilities.

2. **Custom Operations**: Test custom operations defined in this IG, including:
   - **Operation inputs** - Verification that operations accept the correct input parameters, ensuring that operations can be invoked with appropriate data.
   - **Operation outputs** - Verification that operations return the correct output parameters, ensuring that operations provide the expected results.
   - **Operation behavior** - Verification that operations perform the correct actions, ensuring that operations implement the intended functionality.
   - **Operation errors** - Verification that operations handle error conditions correctly, ensuring that operations fail gracefully and provide informative error messages.
   - **Operation performance** - Measurement of operation execution time and resource usage, ensuring that operations perform efficiently.

3. **Operation Combinations**: Test operation combinations, including:
   - **Sequential operations** - Series of operations that build on each other, such as create followed by read, ensuring that operations work together correctly.
   - **Conditional operations** - Operations that depend on resource state, such as conditional update or conditional create, ensuring that operations respect existing resource state.
   - **Batch operations** - Multiple operations submitted together as a batch, ensuring that implementations support efficient processing of multiple operations.
   - **Transaction operations** - Multiple operations submitted together as an atomic transaction, ensuring that implementations support all-or-nothing processing of related operations.
   - **Asynchronous operations** - Operations that execute asynchronously, ensuring that implementations support long-running operations through the async pattern.

4. **Operation Edge Cases**: Test operation edge cases, including:
   - **Empty inputs** - Operations with empty or minimal input parameters, ensuring that implementations handle these correctly.
   - **Invalid inputs** - Operations with syntactically or semantically invalid input parameters, ensuring that implementations return appropriate errors.
   - **Large inputs** - Operations with very large input parameters, ensuring that implementations handle these without truncation or failure.
   - **Concurrent operations** - Multiple operations executed simultaneously, ensuring that implementations maintain data consistency under concurrent access.
   - **Interrupted operations** - Operations that are interrupted during execution, ensuring that implementations maintain data consistency when operations don't complete normally.

5. **Operation Security**: Test operation security, including:
   - **Authentication** - Verification that operations require appropriate authentication, ensuring that only authorized users can execute operations.
   - **Authorization** - Verification that operations enforce appropriate access controls, ensuring that users can only execute operations they are authorized for.
   - **Audit logging** - Verification that operations generate appropriate audit records, ensuring that operation execution is properly tracked.
   - **Rate limiting** - Verification that operations enforce appropriate rate limits, ensuring that implementations are protected from excessive use.
   - **Input validation** - Verification that operations validate input parameters before processing, ensuring that implementations are protected from malicious or malformed inputs.
