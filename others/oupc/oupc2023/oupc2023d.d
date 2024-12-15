import std;

void main() {
    auto S = readln.chomp.to!(dchar[]);

    size_t L = S.length;

    DList!dchar list;
    foreach (i; 1 .. L - 1) {
        if (!list.empty && list.back == S[i]) {
            list.removeBack;
        }
        else {
            list.insertBack(S[i]);
        }
    }

    list.insertFront(S[0]);
    if (L > 1) {
        if (list.back == S[L - 1]) {
            list.removeBack;
        }
        else {
            list.insertBack(S[L - 1]);
        }
    }

    auto res = list[];
    res.reverse;

    res.writeln;
}
