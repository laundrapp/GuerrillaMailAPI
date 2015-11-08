A simple way to interact with the [GuerrillaMail API](https://www.guerrillamail.com/GuerrillaMailAPI.html) 

----------

####Getting started

Add the repo to your pom.xml

    <repository>
        <id>jitpack.io</id>
        <url>https://jitpack.io</url>
    </repository>

Then add the dependency

    <dependency>
        <groupId>com.github.AkHo1ic</groupId>
        <artifactId>GuerrillaMailAPI</artifactId>
        <version>fcff523c32</version>
    </dependency>


----------

####Usage

    Mailbox mailbox = new Mailbox(10, TimeUnit.SECONDS);
    mailbox.setEmailAddress("asd");
    mailbox.setEmailListener((event) -> {
        System.out.println("Got email: " + event.getEmail());
    });
