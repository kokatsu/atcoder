import std;

void main() {
    string S;
    readf("%s\n", S);

    int cnt;
    bool isOk = true;
    foreach (s; S) {
        if (s == '(')
            ++cnt;
        else
            --cnt;

        isOk &= (cnt >= 0);
    }

    isOk &= (cnt == 0);

    string res = isOk ? "Yes" : "No";
    res.writeln;
}
