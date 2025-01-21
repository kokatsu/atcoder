import std;

dchar convert(dchar x) {
    if (65 <= x && x <= 90) {
        return x + 97 - 65;
    }
    return x + 65 - 97;
}

void main() {
    string S;
    int Q;
    readf("%s\n%d\n", S, Q);

    auto K = readln.chomp.split.to!(ulong[]);

    ulong L = S.length;
    auto res = new dchar[](Q);
    foreach (i, k; K) {
        ulong index = k, width = L;
        while (width < index) {
            width <<= 1;
        }

        bool flag;
        while (width > L) {
            width /= 2;
            if (index > width) {
                index -= width;
                flag = !flag;
            }
        }
        --index;

        res[i] = flag ? convert(S[index]) : S[index];
    }

    writefln("%-(%c %)", res);
}
