{{-- regular object attribute --}}
<td>
  @if(!empty($entry->{$column['name']}))
    <img id="mainImage" src="{{ url($entry->{$column['name']}) }}" width="40" height="40">
  @endif
</td>
