#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>
#include "../libexport.h"

int main() {
    printf("=== C Export Demo ===\n");
    fflush(stdout);  // Force output
    
    // Initialize packages - call init functions first
    github_com_goplus_llgo__demo_go_export_c_init();
    github_com_goplus_llgo__demo_go_export_init();

    // Test HelloWorld
    HelloWorld();
    printf("\n");

    // Test small struct
    main_SmallStruct small = CreateSmallStruct(5, 1);  // 1 for true
    printf("Small struct: %d %d\n", small.ID, small.Flag);

    main_SmallStruct processed = ProcessSmallStruct(small);
    printf("Processed small: %d %d\n", processed.ID, processed.Flag);

    main_SmallStruct* ptrSmall = ProcessSmallStructPtr(&small);
    if (ptrSmall != NULL) {
        printf("Ptr small: %d %d\n", ptrSmall->ID, ptrSmall->Flag);
    }

    // Test large struct - create GoString for name parameter
    GoString name = {"test_large", 10};  // name and length
    main_LargeStruct large = CreateLargeStruct(12345, name);
    printf("Large struct ID: %" PRId64 "\n", large.ID);

    int64_t total = ProcessLargeStruct(large);
    printf("Large struct total: %" PRId64 "\n", total);

    main_LargeStruct* ptrLarge = ProcessLargeStructPtr(&large);
    if (ptrLarge != NULL) {
        printf("Ptr large ID: %" PRId64 "\n", ptrLarge->ID);
    }

    // Test self-referential struct
    main_Node* node1 = CreateNode(100);
    main_Node* node2 = CreateNode(200);
    LinkNodes(node1, node2);

    int count = TraverseNodes(node1);
    printf("Node count: %d\n", count);

    // Test basic types
    printf("Bool: %d\n", ProcessBool(1));  // 1 for true
    printf("Int8: %d\n", ProcessInt8(10));
    printf("Uint8: %d\n", ProcessUint8(10));
    printf("Int16: %d\n", ProcessInt16(10));
    printf("Uint16: %d\n", ProcessUint16(10));
    printf("Int32: %d\n", ProcessInt32(10));
    printf("Uint32: %u\n", ProcessUint32(10));
    printf("Int64: %" PRId64 "\n", ProcessInt64(10));
    printf("Uint64: %" PRIu64 "\n", ProcessUint64(10));
    printf("Int: %ld\n", ProcessInt(10));
    printf("Uint: %lu\n", ProcessUint(10));
    printf("Uintptr: %lu\n", ProcessUintptr(0x1000));
    printf("Float32: %f\n", ProcessFloat32(3.14f));
    printf("Float64: %f\n", ProcessFloat64(3.14));

    // Test unsafe pointer
    int test_val = 42;
    void* ptr_result = ProcessUnsafePointer(&test_val);
    printf("UnsafePointer: %p\n", ptr_result);

    // Test named types
    main_MyInt myInt = ProcessMyInt(42);
    printf("MyInt: %ld\n", (long)myInt);

    // Test arrays
    intptr_t arr[5] = {1, 2, 3, 4, 5};
    printf("Array sum: %ld\n", ProcessIntArray(arr));

    // Test complex data with multidimensional arrays
    main_ComplexData complex = CreateComplexData();
    printf("Complex data matrix sum: %" PRId32 "\n", ProcessComplexData(complex));

    // Test interface - this is more complex in C, we'll skip for now
    printf("Interface test skipped (complex in C)\n");

    // Test various parameter counts
    printf("NoParams: %ld\n", NoParams());
    printf("OneParam: %ld\n", OneParam(5));
    printf("ThreeParams: %f\n", ThreeParams(10, 2.5, 1));  // 1 for true

    // Test XType from c package - create GoString for name parameter
    GoString xname = {"test_x", 6};  // name and length
    C_XType xtype = CreateXType(42, xname, 3.14, 1);  // 1 for true
    printf("XType: %d %f %d\n", xtype.ID, xtype.Value, xtype.Flag);

    C_XType processedX = ProcessXType(xtype);
    printf("Processed XType: %d %f %d\n", processedX.ID, processedX.Value, processedX.Flag);

    C_XType* ptrX = ProcessXTypePtr(&xtype);
    if (ptrX != NULL) {
        printf("Ptr XType: %d %f %d\n", ptrX->ID, ptrX->Value, ptrX->Flag);
    }

    // Test multidimensional arrays
    printf("\n=== Multidimensional Array Tests ===\n");
    
    // Create and test 2D matrix [3][4]
    // Note: CreateMatrix2D returns [3][4]int32, but function returns need special handling in C
    printf("Testing 2D matrix functions...\n");
    
    // Create a test 2D matrix [3][4]int32
    int32_t test_matrix[3][4] = {
        {1, 2, 3, 4},
        {5, 6, 7, 8}, 
        {9, 10, 11, 12}
    };
    int32_t matrix_sum = ProcessMatrix2D(test_matrix);
    printf("Matrix2D sum: %d\n", matrix_sum);
    
    // Create a test 3D cube [2][3][4]uint8
    uint8_t test_cube[2][3][4];
    uint8_t val = 1;
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 3; j++) {
            for (int k = 0; k < 4; k++) {
                test_cube[i][j][k] = val++;
            }
        }
    }
    uint32_t cube_sum = ProcessMatrix3D(test_cube);
    printf("Matrix3D (cube) sum: %u\n", cube_sum);
    
    // Create a test 5x4 grid [5][4]double
    double test_grid[5][4];
    double grid_val = 1.0;
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 4; j++) {
            test_grid[i][j] = grid_val;
            grid_val += 0.5;
        }
    }
    double grid_sum = ProcessGrid5x4(test_grid);
    printf("Grid5x4 sum: %f\n", grid_sum);
    
    // Test functions that return multidimensional arrays (as multi-level pointers)
    printf("\n=== Testing Return Value Functions ===\n");
    
    // Test CreateMatrix1D() which returns Array_int32_t_4
    printf("About to call CreateMatrix1D()...\n");
    fflush(stdout);
    Array_int32_t_4 matrix1d = CreateMatrix1D();
    printf("CreateMatrix1D() call completed\n");
    printf("CreateMatrix1D() returned struct, first element: %d\n", matrix1d.data[0]);
    
    // Test CreateMatrix2D() which returns Array_int32_t_3_4
    printf("About to call CreateMatrix2D()...\n");
    fflush(stdout);
    Array_int32_t_3_4 matrix2d = CreateMatrix2D();
    printf("CreateMatrix2D() call completed\n");
    printf("CreateMatrix2D() returned struct, first element: %d\n", matrix2d.data[0][0]);
    
    // Test CreateMatrix3D() which returns Array_uint8_t_2_3_4
    Array_uint8_t_2_3_4 cube = CreateMatrix3D();
    printf("CreateMatrix3D() returned struct, first element: %u\n", cube.data[0][0][0]);
    
    // Test CreateGrid5x4() which returns Array_double_5_4
    Array_double_5_4 grid = CreateGrid5x4();
    printf("CreateGrid5x4() returned struct, first element: %f\n", grid.data[0][0]);

    // Test NoReturn function
    // Note: This function takes a string parameter which is complex to pass from C
    // We'll skip it for now or pass a simple string if the binding allows
    printf("NoReturn test skipped (string parameter)\n");

    printf("C demo completed!\n");

    return 0;
}