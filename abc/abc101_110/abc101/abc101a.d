import std;

void main() {
    string S;
    readf("%s\n", S);

    int res;
    foreach (s; S) {
        if (s == '+')
            ++res;
        else
            --res;
    }

    res.writeln;
}
