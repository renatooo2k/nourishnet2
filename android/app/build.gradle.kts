// Arquivo: android/build.gradle.kts
// Compatível com Kotlin DSL + Flutter 3.22.0 + Gradle 8.x

import java.util.Properties

buildscript {
    repositories {
        google()
        mavenCentral()
    }

    dependencies {
        classpath("com.android.tools.build:gradle:8.3.0")
        classpath("org.jetbrains.kotlin:kotlin-gradle-plugin:1.9.22")
    }
}

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

// Carrega o local.properties (necessário para o Flutter no CI/CD)
fun getLocalProperties(): Properties {
    val localProperties = Properties()
    val localPropertiesFile = rootProject.file("local.properties")
    if (localPropertiesFile.exists()) {
        localPropertiesFile.inputStream().use { localProperties.load(it) }
    }
    return localProperties
}

val localProperties = getLocalProperties()

tasks.register<Delete>("clean") {
    delete(rootProject.buildDir)
}
