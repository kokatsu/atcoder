import std;

void main() {
    int N;
    readf("%d\n", N);

    auto s = new string[](N), t = new string[](N);
    int[string] list;
    foreach (i; 0 .. N) {
        auto input = readln.chomp.split;
        s[i] = input[0], t[i] = input[1];
        ++list[s[i]], ++list[t[i]];
    }

    bool isOK = true;
    foreach (i; 0 .. N) {
        if (list[s[i]] > 1 && list[t[i]] > 1) {
            if (!(s[i] == t[i] && list[s[i]] == 2)) {
                isOK = false;
            }
        }
    }

    writeln(isOK ? "Yes" : "No");
}