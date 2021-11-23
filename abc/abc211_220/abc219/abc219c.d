import std;

void main() {
    string X = readln.chomp;

    int N;
    readf("%d\n", N);

    string[] S = new string[](N);
    foreach (i; 0 .. N) {
        S[i] = readln.chomp;
    }

    ulong[dchar] order;
    foreach (i, x; X) {
        order[x] = i;
    }

    bool compFun(string a, string b) {
        ulong len = b.length;
        bool aIsShorter;
        if (len > a.length) {
            len = a.length;
            aIsShorter = true;
        }

        foreach (i; 0 .. len) {
            if (a[i] == b[i]) {
                continue;
            }
            else if (order[a[i]] < order[b[i]]) {
                return true;
            }
            else {
                return false;
            }
        }

        return aIsShorter;
    }

    S.sort!((a, b) => compFun(a, b));

    foreach (s; S) {
        s.writeln;
    }
}