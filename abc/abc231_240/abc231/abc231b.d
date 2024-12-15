import std;

void main() {
    int N;
    readf("%d\n", N);

    int[string] list;
    foreach (_; 0 .. N) {
        string S = readln.chomp;
        ++list[S];
    }

    string res;
    int cnt;
    foreach (l; list.byKeyValue) {
        if (cnt < l.value) {
            res = l.key;
            cnt = l.value;
        }
    }

    res.writeln;
}
