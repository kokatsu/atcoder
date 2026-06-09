import std;

void main() {
    string S;
    readfln("%s", S);

    int res, A, B;
    foreach (s; S) {
        if (s == 'A') {
            ++A;
        }
        else if (s == 'B' && A > B) {
            ++B;
        }
        else if (s == 'C' && B > 0) {
            ++res;
            --A, --B;
        }
    }

    res.writeln;
}
