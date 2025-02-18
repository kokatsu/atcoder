import std;

void main() {
    string S;
    readf("%s\n", S);

    int res;
    string T = "0000";
    while (T.length <= 4) {
        bool isOk = true;
        foreach (i, s; S) {
            bool exist = T.canFind(i.to!string);
            isOk &= !((s == 'o' && !exist) || (s == 'x' && exist));
        }

        if (isOk) {
            ++res;
        }

        T = T.succ;
    }

    res.writeln;
}
