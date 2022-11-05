import std;

void main() {
    string S;
    readf("%s\n", S);

    int res = -1;
    foreach_reverse (i, s; S) {
        if (s == 'a') {
            res = i.to!int + 1;
            break;
        }
    }

    res.writeln;
}