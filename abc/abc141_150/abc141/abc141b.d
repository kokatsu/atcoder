import std;

void main() {
    string S;
    readf("%s\n", S);

    bool isOK = true;
    foreach (i, s; S) {
        if (i % 2 == 0)
            isOK &= "RUD".canFind(s);
        else
            isOK &= "LUD".canFind(s);
    }

    writeln(isOK ? "Yes" : "No");
}
