import std;

void main() {
    int N;
    readf("%d\n", N);

    bool[string] list0, list1;
    string res = "satisfiable";
    foreach (_; 0 .. N) {
        auto S = readln.chomp;

        bool isFront = (S.front == '!');
        string T = (isFront ? S[1 .. $] : S);
        (isFront ? list1[T] : list0[T]) = true;

        if ((T in list0) && (T in list1)) {
            res = T;
        }
    }

    res.writeln;
}
