import std;

void main() {
    string day;
    readfln("%s", day);

    int[string] D = [
        "Sunday": 0, "Monday": 5, "Tuesday": 4, "Wednesday": 3, "Thursday": 2,
        "Friday": 1, "Saturday": 0
    ];

    int res = D[day];
    res.writeln;
}
