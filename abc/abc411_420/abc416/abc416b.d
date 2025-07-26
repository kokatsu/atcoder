import std;

void main() {
    string S;
    readf("%s\n", S);

    size_t L = S.length;

    bool flag;
    char[] T = new char[](L);
    T[] = '.';
    foreach (i; 0 .. L) {
        if (S[i] == '#') {
            T[i] = '#';
            continue;
        }

        if (!flag) {
            T[i] = 'o';
            flag = true;
            continue;
        }

        if (i > 0 && T[i - 1] == '#') {
            T[i] = 'o';
        }
    }

    T.writeln;
}
