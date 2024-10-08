//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2024 Apple Inc. and the Swift.org project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Swift.org project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

package com.example.swift;

// Import swift-extract generated sources
import com.example.swift.generated.ExampleSwiftLibrary;
import com.example.swift.generated.MySwiftClass;

// Import javakit/swiftkit support libraries
import org.swift.swiftkit.SwiftKit;


import java.lang.foreign.*;
import java.util.List;


public class HelloJava2Swift {

    public static void main(String[] args) {
        boolean traceDowncalls = Boolean.getBoolean("jextract.trace.downcalls");
        System.out.println("Property: jextract.trace.downcalls = " + traceDowncalls);

        final var dylibNames = List.of(
                "swiftCore",
                "JavaKitExample"
        );


        System.out.println("Loading libraries...");

        for (var lib : dylibNames) {
            System.out.printf("Loading: %s... ", lib);
            System.loadLibrary(lib);
            System.out.println("ok.");
        }

        examples();
    }

    static void examples() {
        ExampleSwiftLibrary.helloWorld();

        ExampleSwiftLibrary.globalTakeInt(1337);

        MySwiftClass obj = new MySwiftClass(2222, 7777);

        SwiftKit.retain(obj.$memorySegment());
        System.out.println("[java] obj ref count = " + SwiftKit.retainCount(obj.$memorySegment()));

        obj.voidMethod();
        obj.takeIntMethod(42);

        MemorySegment swiftType = SwiftKit.getTypeByMangledNameInEnvironment("SiSg");
        System.out.println("Memory layout for Swift.Int?:");
        System.out.println("  size = " + SwiftKit.sizeOfSwiftType(swiftType));
        System.out.println("  stride = " + SwiftKit.strideOfSwiftType(swiftType));
        System.out.println("  alignment = " + SwiftKit.alignmentOfSwiftType(swiftType));
        System.out.println("  Java layout = " + SwiftKit.layoutOfSwiftType(swiftType));
    }
}